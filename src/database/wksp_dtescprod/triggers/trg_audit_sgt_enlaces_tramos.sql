create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_enlaces_tramos after
    insert or update or delete on wksp_dtescprod.sgt_enlaces_tramos
    for each row
declare
    v_audit_id    number;
    v_pk_value    varchar2(100);
    v_action_type varchar2(10);
begin
    if inserting then
        v_action_type := 'INSERT';
        v_pk_value := to_char(:new.id);
    elsif updating then
        v_action_type := 'UPDATE';
        v_pk_value := to_char(:new.id);
    elsif deleting then
        v_action_type := 'DELETE';
        v_pk_value := to_char(:old.id);
    end if;

    v_audit_id := audit_pkg.start_audit(
        p_table_name => 'SGT_ENLACES_TRAMOS',
        p_action     => v_action_type
    );
    if inserting then
        if :new.nombre is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  null,
                                  :new.nombre);
        end if;

        if :new.lado_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'LADO_ID',
                                  null,
                                  to_char(:new.lado_id));

        end if;

        if :new.equipo_a_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_A_ID',
                                  null,
                                  to_char(:new.equipo_a_id));
        end if;

        if :new.interfaz_a_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_A_ID',
                                  null,
                                  to_char(:new.interfaz_a_id));
        end if;

        if :new.equipo_b_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_B_ID',
                                  null,
                                  to_char(:new.equipo_b_id));
        end if;

        if :new.interfaz_b_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_B_ID',
                                  null,
                                  to_char(:new.interfaz_b_id));
        end if;

        if :new.tipo_conexion is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_CONEXION',
                                  null,
                                  :new.tipo_conexion);
        end if;

        if :new.enlace_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'ENLACE_ID',
                                  null,
                                  :new.enlace_id);
        end if;

    elsif updating then
        if nvl(:old.nombre,
               'NULL') != nvl(:new.nombre,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  :old.nombre,
                                  :new.nombre);
        end if;

        if nvl(:old.lado_id,
               -1) != nvl(:new.lado_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'LADO_ID',
                                  to_char(:old.lado_id),
                                  to_char(:new.lado_id));

        end if;

        if nvl(:old.equipo_a_id,
               -1) != nvl(:new.equipo_a_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_A_ID',
                                  to_char(:old.equipo_a_id),
                                  to_char(:new.equipo_a_id));
        end if;

        if nvl(:old.interfaz_a_id,
               -1) != nvl(:new.interfaz_a_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_A_ID',
                                  to_char(:old.interfaz_a_id),
                                  to_char(:new.interfaz_a_id));
        end if;

        if nvl(:old.equipo_b_id,
               -1) != nvl(:new.equipo_b_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_B_ID',
                                  to_char(:old.equipo_b_id),
                                  to_char(:new.equipo_b_id));
        end if;

        if nvl(:old.interfaz_b_id,
               -1) != nvl(:new.interfaz_b_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_B_ID',
                                  to_char(:old.interfaz_b_id),
                                  to_char(:new.interfaz_b_id));
        end if;

        if nvl(:old.tipo_conexion,
               'NULL') != nvl(:new.tipo_conexion,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_CONEXION',
                                  :old.tipo_conexion,
                                  :new.tipo_conexion);
        end if;

        if nvl(:old.enlace_id,
               'NULL') != nvl(:new.enlace_id,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'ENLACE_ID',
                                  :old.enlace_id,
                                  :new.enlace_id);
        end if;

    elsif deleting then
        if :old.nombre is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  :old.nombre,
                                  null);
        end if;

        if :old.lado_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'LADO_ID',
                                  to_char(:old.lado_id),
                                  null);

        end if;

        if :old.equipo_a_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_A_ID',
                                  to_char(:old.equipo_a_id),
                                  null);
        end if;

        if :old.interfaz_a_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_A_ID',
                                  to_char(:old.interfaz_a_id),
                                  null);
        end if;

        if :old.equipo_b_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_B_ID',
                                  to_char(:old.equipo_b_id),
                                  null);
        end if;

        if :old.interfaz_b_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'INTERFAZ_B_ID',
                                  to_char(:old.interfaz_b_id),
                                  null);
        end if;

        if :old.tipo_conexion is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_CONEXION',
                                  :old.tipo_conexion,
                                  null);
        end if;

        if :old.enlace_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_ENLACES_TRAMOS',
                                  'ID',
                                  v_pk_value,
                                  'ENLACE_ID',
                                  :old.enlace_id,
                                  null);
        end if;

    end if;

exception
    when others then
        null;
end trg_audit_sgt_enlaces_tramos;
/

alter trigger wksp_dtescprod.trg_audit_sgt_enlaces_tramos enable;


-- sqlcl_snapshot {"hash":"51113fceff87d435167bd0675179dae42baea7f1","type":"TRIGGER","name":"TRG_AUDIT_SGT_ENLACES_TRAMOS","schemaName":"WKSP_DTESCPROD","sxml":""}