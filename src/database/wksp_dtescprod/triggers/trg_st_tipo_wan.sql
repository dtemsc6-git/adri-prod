create or replace editionable trigger wksp_dtescprod.trg_st_tipo_wan before
    insert or update on wksp_dtescprod.sgt_tipo_wan
    for each row
begin
    --
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
    --
end;
/

alter trigger wksp_dtescprod.trg_st_tipo_wan enable;


-- sqlcl_snapshot {"hash":"5223e6bc939e8eb5e7abce4a61e64878d9f6559b","type":"TRIGGER","name":"TRG_ST_TIPO_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}