create or replace editionable trigger wksp_dtescprod.trg_st_comentarios before
    insert or update on wksp_dtescprod.sgt_comentarios
    for each row
begin
--    --actualizar info de  
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

alter trigger wksp_dtescprod.trg_st_comentarios enable;


-- sqlcl_snapshot {"hash":"20eada7e73ec5de25bbdc5342ea7f05fb39683f6","type":"TRIGGER","name":"TRG_ST_COMENTARIOS","schemaName":"WKSP_DTESCPROD","sxml":""}