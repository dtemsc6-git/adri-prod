create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_conexiones_enlace_wan after
    insert or update or delete on wksp_dtescprod.sgt_conexiones_enlace_wan
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

    v_audit_id := audit_pkg.start_audit('SGT_CONEXIONES_ENLACE_WAN', v_action);
    if inserting then   
        -- Campos obligatorios   
        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :new.id,
                              'ENLACE_TRAMO_ID',
                              null,
                              to_char(:new.enlace_tramo_id));

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :new.id,
                              'ENLACE_WAN_ID',
                              null,
                              to_char(:new.enlace_wan_id));

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :new.id,
                              'SECUENCIA',
                              null,
                              to_char(:new.secuencia));

    elsif updating then   
        -- ENLACE_TRAMO_ID   
        if :old.enlace_tramo_id != :new.enlace_tramo_id
        or (
            :old.enlace_tramo_id is null
            and :new.enlace_tramo_id is not null
        )
        or (
            :old.enlace_tramo_id is not null
            and :new.enlace_tramo_id is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'ENLACE_TRAMO_ID',
                                  to_char(:old.enlace_tramo_id),
                                  to_char(:new.enlace_tramo_id));
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
                                  'SGT_CONEXIONES_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'ENLACE_WAN_ID',
                                  to_char(:old.enlace_wan_id),
                                  to_char(:new.enlace_wan_id));

        end if;   
           
        -- SECUENCIA   
        if :old.secuencia != :new.secuencia
        or (
            :old.secuencia is null
            and :new.secuencia is not null
        )
        or (
            :old.secuencia is not null
            and :new.secuencia is null
        ) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_ENLACE_WAN',
                                  'ID',
                                  :new.id,
                                  'SECUENCIA',
                                  to_char(:old.secuencia),
                                  to_char(:new.secuencia));
        end if;   
       
    -- Para eliminaciones - registramos los valores que se están eliminando   
    elsif deleting then
        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :old.id,
                              'ENLACE_TRAMO_ID',
                              to_char(:old.enlace_tramo_id),
                              null);

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :old.id,
                              'ENLACE_WAN_ID',
                              to_char(:old.enlace_wan_id),
                              null);

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_ENLACE_WAN',
                              'ID',
                              :old.id,
                              'SECUENCIA',
                              to_char(:old.secuencia),
                              null);

    end if;

end;
/

alter trigger wksp_dtescprod.trg_audit_sgt_conexiones_enlace_wan enable;


-- sqlcl_snapshot {"hash":"ea167323e1ce92a8fac61ca06d62974c7066da10","type":"TRIGGER","name":"TRG_AUDIT_SGT_CONEXIONES_ENLACE_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}