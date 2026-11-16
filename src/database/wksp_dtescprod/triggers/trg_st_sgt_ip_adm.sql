create or replace editionable trigger wksp_dtescprod.trg_st_sgt_ip_adm before
    insert or update on wksp_dtescprod.sgt_ip_adm
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

alter trigger wksp_dtescprod.trg_st_sgt_ip_adm enable;


-- sqlcl_snapshot {"hash":"682211847d629599cbcb9323c863280d231c5e76","type":"TRIGGER","name":"TRG_ST_SGT_IP_ADM","schemaName":"WKSP_DTESCPROD","sxml":""}