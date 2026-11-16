create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_sitios_enlace_wan after
    insert or update or delete on wksp_dtescprod.sgt_sitios_enlace_wan
    for each row
declare
    v_action   varchar2(10);
    v_audit_id number;
begin 
    -- Determinar tipo de operación 
    if inserting then
        v_action := 'INSERT';
    elsif updating then
        v_action := 'UPDATE';
    elsif deleting then
        v_action := 'DELETE';
    end if; 
 
    -- Iniciar auditoría 
    v_audit_id := audit_pkg.start_audit('SGT_SITIOS_ENLACE_WAN', v_action);
    if inserting then 
        -- Auditar columnas de negocio (omitir creado/modificado) 
        if :new.sitio_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'SITIO_ID',
                                  null,
                                  to_char(:new.sitio_id));
        end if;

        if :new.enlace_wan_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'ENLACE_WAN_ID',
                                  null,
                                  to_char(:new.enlace_wan_id));

        end if;

        if :new.seq is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'SEQ',
                                  null,
                                  to_char(:new.seq));
        end if;

    elsif updating then 
        -- SITIO_ID 
        if :old.sitio_id != :new.sitio_id
        or (
            :old.sitio_id is null
            and :new.sitio_id is not null
        )
        or (
            :old.sitio_id is not null
            and :new.sitio_id is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'SITIO_ID',
                                  to_char(:old.sitio_id),
                                  to_char(:new.sitio_id));
        end if; 
 
        -- ENLACE_WAN_ID 
        if :old.enlace_wan_id != :new.enlace_wan_id
        or (
            :old.enlace_wan_id is null
            and :new.enlace_wan_id is not null
        )
        or (
            :old.enlace_wan_id is not null
            and :new.enlace_wan_id is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'ENLACE_WAN_ID',
                                  to_char(:old.enlace_wan_id),
                                  to_char(:new.enlace_wan_id));

        end if; 
 
        -- SEQ 
        if :old.seq != :new.seq
        or (
            :old.seq is null
            and :new.seq is not null
        )
        or (
            :old.seq is not null
            and :new.seq is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'SEQ',
                                  to_char(:old.seq),
                                  to_char(:new.seq));
        end if;

    elsif deleting then 
        -- Registrar los valores eliminados 
        if :old.sitio_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :old.id,
                                  'SITIO_ID',
                                  to_char(:old.sitio_id),
                                  null);
        end if;

        if :old.enlace_wan_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :old.id,
                                  'ENLACE_WAN_ID',
                                  to_char(:old.enlace_wan_id),
                                  null);

        end if;

        if :old.seq is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_ENLACE_WAN',
                                  'ID',
                                  :old.id,
                                  'SEQ',
                                  to_char(:old.seq),
                                  null);
        end if;

    end if;

end;
/

alter trigger wksp_dtescprod.trg_audit_sgt_sitios_enlace_wan enable;


-- sqlcl_snapshot {"hash":"54a3391dbd73f10ff0b3da48b06ad55996485776","type":"TRIGGER","name":"TRG_AUDIT_SGT_SITIOS_ENLACE_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}