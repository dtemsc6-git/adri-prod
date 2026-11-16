create or replace editionable trigger wksp_dtescprod.trg_st_archivos before
    insert or update on wksp_dtescprod.sgt_archivos
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

alter trigger wksp_dtescprod.trg_st_archivos enable;


-- sqlcl_snapshot {"hash":"ae943b18a94c045e8b8244bdd127e559ba63b0d8","type":"TRIGGER","name":"TRG_ST_ARCHIVOS","schemaName":"WKSP_DTESCPROD","sxml":""}