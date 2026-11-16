create or replace force editionable view wksp_dtescprod.v_audit_equipos (
    audit_id,
    usuario,
    tipo_operacion,
    fecha_hora,
    fecha,
    hora,
    tabla_origen,
    equipo_id,
    tipo_componente,
    registro_id,
    detalle_old_value,
    detalle_new_value,
    fecha_hora_filtro
) as
    select
        am.audit_id,
        am.apex_user                        as usuario,
        am.action_type                      as tipo_operacion,
        am.timestamp                        as fecha_hora,
        to_char(am.timestamp, 'DD/MM/YYYY') as fecha,
        to_char(am.timestamp, 'HH24:MI:SS') as hora,
        'SGT_EQUIPOS'                       as tabla_origen,
        to_number((
            select
                ad.pk_value
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ad.table_name = 'SGT_EQUIPOS'
                and rownum = 1
        ))                                  as equipo_id,
        'Equipo Principal'                  as tipo_componente,
        (
            select
                ad.pk_value
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and rownum = 1
        )                                   as registro_id, 
    -- CAMBIO: Concatenar TODOS los campos con LISTAGG 
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.old_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_old_value,
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.new_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_new_value,
        am.timestamp                        as fecha_hora_filtro
    from
        audit_master am
    where
        exists (
            select
                1
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ad.table_name = 'SGT_EQUIPOS'
        )
        and am.action_type not in ( 'INSERT', 'Inserción' )
    union all 
 
-- ============================================================================ 
-- 2. Cambios en SGT_INTERFACES 
-- ============================================================================ 
    select
        am.audit_id,
        am.apex_user                        as usuario,
        am.action_type                      as tipo_operacion,
        am.timestamp                        as fecha_hora,
        to_char(am.timestamp, 'DD/MM/YYYY') as fecha,
        to_char(am.timestamp, 'HH24:MI:SS') as hora,
        'SGT_INTERFACES'                    as tabla_origen, 
 
        /* EQUIPO_ID derivado solo de AUDIT_DETAIL - optimizado */
        to_number((
            select
                coalesce(ad_eq.new_value, ad_eq.old_value)
            from
                audit_detail ad_eq
            where
                    ad_eq.table_name = 'SGT_INTERFACES'
                and ad_eq.column_name = 'EQUIPO_ID'
                and ad_eq.pk_value =(
                    select
                        ad_pk.pk_value
                    from
                        audit_detail ad_pk
                    where
                            ad_pk.audit_id = am.audit_id
                        and ad_pk.table_name = 'SGT_INTERFACES'
                        and rownum = 1
                )
                and ad_eq.audit_id <= am.audit_id
            order by
                case
                    when ad_eq.audit_id = am.audit_id then
                        0
                    else
                        1
                end,
                ad_eq.audit_id desc
            fetch first 1 row only
        ))                                  as equipo_id,
        'Interface'                         as tipo_componente,
        (
            select
                ad.pk_value
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and rownum = 1
        )                                   as registro_id,
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.old_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_old_value,
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.new_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_new_value,
        am.timestamp                        as fecha_hora_filtro
    from
        audit_master am
    where
        exists (
            select
                1
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ad.table_name = 'SGT_INTERFACES'
        )
        and am.action_type not in ( 'INSERT', 'Inserción' )
    union all 
 
-- ============================================================================ 
-- 3. Cambios en SGT_ENLACES_FO vista desde EQUIPO_ID_A 
-- ============================================================================ 
    select
        am.audit_id,
        am.apex_user                        as usuario,
        am.action_type                      as tipo_operacion,
        am.timestamp                        as fecha_hora,
        to_char(am.timestamp, 'DD/MM/YYYY') as fecha,
        to_char(am.timestamp, 'HH24:MI:SS') as hora,
        'SGT_ENLACES_FO'                    as tabla_origen, 
    /* EQUIPO_ID_A derivado solo de AUDIT_DETAIL - optimizado */
        to_number((
            select
                coalesce(ad_eq.new_value, ad_eq.old_value)
            from
                audit_detail ad_eq
            where
                    ad_eq.table_name = 'SGT_ENLACES_FO'
                and ad_eq.column_name = 'EQUIPO_ID_A'
                and ad_eq.pk_value =(
                    select
                        ad_pk.pk_value
                    from
                        audit_detail ad_pk
                    where
                            ad_pk.audit_id = am.audit_id
                        and ad_pk.table_name = 'SGT_ENLACES_FO'
                        and rownum = 1
                )
                and ad_eq.audit_id <= am.audit_id
            order by
                case
                    when ad_eq.audit_id = am.audit_id then
                        0
                    else
                        1
                end,
                ad_eq.audit_id desc
            fetch first 1 row only
        ))                                  as equipo_id,
        'Enlace FO'                         as tipo_componente,
        (
            select
                ad.pk_value
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and rownum = 1
        )                                   as registro_id, 
    -- CAMBIO: LISTAGG 
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.old_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_old_value,
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.new_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_new_value,
        am.timestamp                        as fecha_hora_filtro
    from
        audit_master am
    where
        exists (
            select
                1
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ad.table_name = 'SGT_ENLACES_FO'
        )
        and am.action_type not in ( 'INSERT', 'Inserción' )
    union all 
 
-- ============================================================================ 
-- 4. Cambios en SGT_ENLACES_FO vista desde EQUIPO_ID_B 
-- ============================================================================ 
    select
        am.audit_id,
        am.apex_user                        as usuario,
        am.action_type                      as tipo_operacion,
        am.timestamp                        as fecha_hora,
        to_char(am.timestamp, 'DD/MM/YYYY') as fecha,
        to_char(am.timestamp, 'HH24:MI:SS') as hora,
        'SGT_ENLACES_FO'                    as tabla_origen, 
    /* EQUIPO_ID_B derivado solo de AUDIT_DETAIL - optimizado */
        to_number((
            select
                coalesce(ad_eq.new_value, ad_eq.old_value)
            from
                audit_detail ad_eq
            where
                    ad_eq.table_name = 'SGT_ENLACES_FO'
                and ad_eq.column_name = 'EQUIPO_ID_B'
                and ad_eq.pk_value =(
                    select
                        ad_pk.pk_value
                    from
                        audit_detail ad_pk
                    where
                            ad_pk.audit_id = am.audit_id
                        and ad_pk.table_name = 'SGT_ENLACES_FO'
                        and rownum = 1
                )
                and ad_eq.audit_id <= am.audit_id
            order by
                case
                    when ad_eq.audit_id = am.audit_id then
                        0
                    else
                        1
                end,
                ad_eq.audit_id desc
            fetch first 1 row only
        ))                                  as equipo_id,
        'Enlace FO'                         as tipo_componente,
        (
            select
                ad.pk_value
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and rownum = 1
        )                                   as registro_id, 
    -- CAMBIO: LISTAGG 
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.old_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_old_value,
        (
            select
                listagg(ad.column_name
                        || ': '
                        || coalesce(ad.new_value, '[NULL]'),
                        ' | ') within group(
                order by
                    ad.column_name
                )
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ( ad.old_value is not null
                      or ad.new_value is not null )
        )                                   as detalle_new_value,
        am.timestamp                        as fecha_hora_filtro
    from
        audit_master am
    where
        exists (
            select
                1
            from
                audit_detail ad
            where
                    ad.audit_id = am.audit_id
                and ad.table_name = 'SGT_ENLACES_FO'
        )
        and am.action_type not in ( 'INSERT', 'Inserción' )
    order by
        fecha_hora_filtro desc,
        audit_id desc;


-- sqlcl_snapshot {"hash":"45c65ac3f56b122fe5017a66233ed204373c68b9","type":"VIEW","name":"V_AUDIT_EQUIPOS","schemaName":"WKSP_DTESCPROD","sxml":""}