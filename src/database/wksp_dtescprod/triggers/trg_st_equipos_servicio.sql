create or replace editionable trigger wksp_dtescprod.trg_st_equipos_servicio before
    insert or update on wksp_dtescprod.sgt_equipos_servicio
    for each row
begin 
     --actualizar info de   
    if inserting then
        :new.creado_el := sysdate;
        :new.creado_por := nvl(wwv_flow.g_user, user);
        :new.modificado_el := sysdate;
        :new.modificado_por := nvl(wwv_flow.g_user, user);
    elsif updating then
        :new.modificado_el := sysdate;
        :new.modificado_por := nvl(wwv_flow.g_user, user);
    end if;
end;
/

alter trigger wksp_dtescprod.trg_st_equipos_servicio enable;


-- sqlcl_snapshot {"hash":"ac7f1580265395491b0ad964c6358cc7782236da","type":"TRIGGER","name":"TRG_ST_EQUIPOS_SERVICIO","schemaName":"WKSP_DTESCPROD","sxml":""}