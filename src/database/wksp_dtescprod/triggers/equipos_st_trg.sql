create or replace editionable trigger wksp_dtescprod.equipos_st_trg before
    insert or update on wksp_dtescprod.sgt_equipos
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

alter trigger wksp_dtescprod.equipos_st_trg enable;


-- sqlcl_snapshot {"hash":"f9a83c3093ea4cb3c97795fee3f5e5df6eb2e103","type":"TRIGGER","name":"EQUIPOS_ST_TRG","schemaName":"WKSP_DTESCPROD","sxml":""}