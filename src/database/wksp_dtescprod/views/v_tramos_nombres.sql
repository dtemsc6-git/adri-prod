create or replace force editionable view wksp_dtescprod.v_tramos_nombres (
    id,
    sitio_a,
    sitio_a_id,
    equipo_a,
    iface_a_id,
    interfaz_a,
    etiqueta_a,
    sitio_b,
    sitio_b_id,
    equipo_b,
    iface_b_id,
    interfaz_b,
    etiqueta_b,
    tipo_conexion,
    enlace_id
) as
    select
        et.id, 
    -- Lado A 
        sitio_a.siglas,
        sitio_a.id,
        eq_a.nombre      as equipo_a,
        inter_a.id       as iface_a_id,
        inter_a.nombre   as interfaz_a,
        inter_a.etiqueta as etiqueta_a,
    -- Lado B 
        sitio_b.siglas,
        sitio_b.id,
        eq_b.nombre      as equipo_b,
        inter_b.id       as iface_b_id,
        inter_b.nombre   as interfaz_b,
        inter_b.etiqueta as etiqueta_b,
        et.tipo_conexion as tipo_conexion,
        et.enlace_id     as enlace_id
    from
             sgt_enlaces_tramos et
        inner join sgt_equipos    eq_a on et.equipo_a_id = eq_a.id
        inner join sgt_interfaces inter_a on et.interfaz_a_id = inter_a.id
        inner join sgt_racks      racks_a on eq_a.rack_id = racks_a.id
        inner join sgt_salas      salas_a on racks_a.sala_id = salas_a.id
        inner join sgt_sitios     sitio_a on salas_a.sitio_id = sitio_a.id
        inner join sgt_equipos    eq_b on et.equipo_b_id = eq_b.id
        inner join sgt_interfaces inter_b on et.interfaz_b_id = inter_b.id
        inner join sgt_racks      racks_b on eq_b.rack_id = racks_b.id
        inner join sgt_salas      salas_b on racks_b.sala_id = salas_b.id
        inner join sgt_sitios     sitio_b on salas_b.sitio_id = sitio_b.id
    order by
        et.id;


-- sqlcl_snapshot {"hash":"deb7a07ef2ebb415dedaee4b39325ddb0e87c09a","type":"VIEW","name":"V_TRAMOS_NOMBRES","schemaName":"WKSP_DTESCPROD","sxml":""}