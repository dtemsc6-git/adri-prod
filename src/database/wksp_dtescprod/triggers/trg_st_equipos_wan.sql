create or replace editionable trigger wksp_dtescprod.trg_st_equipos_wan before
    insert or update on wksp_dtescprod.sgt_equipos_wan
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

alter trigger wksp_dtescprod.trg_st_equipos_wan enable;


-- sqlcl_snapshot {"hash":"0700e3215187e7cf1499382b77dc87a33b57a5c0","type":"TRIGGER","name":"TRG_ST_EQUIPOS_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}