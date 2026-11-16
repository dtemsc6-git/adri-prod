create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_sitios_servicio after
    insert or update or delete on wksp_dtescprod.sgt_sitios_servicio
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
    v_audit_id := audit_pkg.start_audit('SGT_SITIOS_SERVICIO', v_action);
    if inserting then 
        -- Auditar columnas de negocio (omitir creado/modificado) 
        if :new.sitio_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :new.id,
                                  'SITIO_ID',
                                  null,
                                  to_char(:new.sitio_id));
        end if;

        if :new.servicio_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :new.id,
                                  'SERVICIO_ID',
                                  null,
                                  to_char(:new.servicio_id));

        end if;

        if :new.seq is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
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
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :new.id,
                                  'SITIO_ID',
                                  to_char(:old.sitio_id),
                                  to_char(:new.sitio_id));
        end if; 
 
        -- SERVICIO_ID 
        if :old.servicio_id != :new.servicio_id
        or (
            :old.servicio_id is null
            and :new.servicio_id is not null
        )
        or (
            :old.servicio_id is not null
            and :new.servicio_id is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :new.id,
                                  'SERVICIO_ID',
                                  to_char(:old.servicio_id),
                                  to_char(:new.servicio_id));

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
                                  'SGT_SITIOS_SERVICIO',
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
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :old.id,
                                  'SITIO_ID',
                                  to_char(:old.sitio_id),
                                  null);
        end if;

        if :old.servicio_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :old.id,
                                  'SERVICIO_ID',
                                  to_char(:old.servicio_id),
                                  null);

        end if;

        if :old.seq is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_SITIOS_SERVICIO',
                                  'ID',
                                  :old.id,
                                  'SEQ',
                                  to_char(:old.seq),
                                  null);
        end if;

    end if;

end;
/

alter trigger wksp_dtescprod.trg_audit_sgt_sitios_servicio enable;


-- sqlcl_snapshot {"hash":"14bc541914df9058c6a55287a125d75ea0a8e3cf","type":"TRIGGER","name":"TRG_AUDIT_SGT_SITIOS_SERVICIO","schemaName":"WKSP_DTESCPROD","sxml":""}