create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_conexiones_servicio after
    insert or update or delete on wksp_dtescprod.sgt_conexiones_servicio
    for each row
declare
    v_audit_id number;
    v_pk_value varchar2(100);
begin
    if inserting then
        v_audit_id := audit_pkg.start_audit('SGT_CONEXIONES_SERVICIO', 'INSERT');
        v_pk_value := to_char(:new.id);
        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'ID',
                              null,
                              to_char(:new.id));

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'SERVICIO_ID',
                              null,
                              to_char(:new.servicio_id));

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'ENLACE_TRAMO_ID',
                              null,
                              to_char(:new.enlace_tramo_id));

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'SEQ',
                              null,
                              to_char(:new.seq));

    elsif updating then
        v_audit_id := audit_pkg.start_audit('SGT_CONEXIONES_SERVICIO', 'UPDATE');
        v_pk_value := to_char(:new.id);
        if nvl(:old.id,
               -1) != nvl(:new.id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_SERVICIO',
                                  'ID',
                                  v_pk_value,
                                  'ID',
                                  to_char(:old.id),
                                  to_char(:new.id));
        end if;

        if nvl(:old.servicio_id,
               -1) != nvl(:new.servicio_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_SERVICIO',
                                  'ID',
                                  v_pk_value,
                                  'SERVICIO_ID',
                                  to_char(:old.servicio_id),
                                  to_char(:new.servicio_id));
        end if;

        if nvl(:old.enlace_tramo_id,
               -1) != nvl(:new.enlace_tramo_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_SERVICIO',
                                  'ID',
                                  v_pk_value,
                                  'ENLACE_TRAMO_ID',
                                  to_char(:old.enlace_tramo_id),
                                  to_char(:new.enlace_tramo_id));
        end if;

        if nvl(:old.seq,
               -1) != nvl(:new.seq,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_CONEXIONES_SERVICIO',
                                  'ID',
                                  v_pk_value,
                                  'SEQ',
                                  to_char(:old.seq),
                                  to_char(:new.seq));
        end if;

    elsif deleting then
        v_audit_id := audit_pkg.start_audit('SGT_CONEXIONES_SERVICIO', 'DELETE');
        v_pk_value := to_char(:old.id);
        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'ID',
                              to_char(:old.id),
                              null);

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'SERVICIO_ID',
                              to_char(:old.servicio_id),
                              null);

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'ENLACE_TRAMO_ID',
                              to_char(:old.enlace_tramo_id),
                              null);

        audit_pkg.log_changes(v_audit_id,
                              'SGT_CONEXIONES_SERVICIO',
                              'ID',
                              v_pk_value,
                              'SEQ',
                              to_char(:old.seq),
                              null);

    end if;
exception
    when others then
        null;
end trg_audit_sgt_conexiones_servicio;
/

alter trigger wksp_dtescprod.trg_audit_sgt_conexiones_servicio enable;


-- sqlcl_snapshot {"hash":"42c4cd4089dd5172b9765de0490ab1d5765adf4e","type":"TRIGGER","name":"TRG_AUDIT_SGT_CONEXIONES_SERVICIO","schemaName":"WKSP_DTESCPROD","sxml":""}