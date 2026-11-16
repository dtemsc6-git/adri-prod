create or replace editionable trigger wksp_dtescprod.servicios_st_trg before
    insert or update on wksp_dtescprod.sgt_servicios
    for each row
begin 
    --actualizar info de  
    if inserting then
        :new.creado_el := sysdate;
        :new.creado_por := nvl(wwv_flow.g_user, user);
        :new.actualizado_el := sysdate;
        :new.actualizado_por := nvl(wwv_flow.g_user, user);
    elsif updating then
        :new.actualizado_el := sysdate;
        :new.actualizado_por := nvl(wwv_flow.g_user, user);
    end if;
end;
/

alter trigger wksp_dtescprod.servicios_st_trg enable;


-- sqlcl_snapshot {"hash":"b2f4b4fe2337d1a220ca47a852d3af2a6bf6614f","type":"TRIGGER","name":"SERVICIOS_ST_TRG","schemaName":"WKSP_DTESCPROD","sxml":""}