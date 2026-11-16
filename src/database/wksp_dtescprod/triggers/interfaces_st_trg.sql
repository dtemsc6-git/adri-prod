create or replace editionable trigger wksp_dtescprod.interfaces_st_trg before
    insert or update on wksp_dtescprod.sgt_interfaces
    for each row
begin
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

alter trigger wksp_dtescprod.interfaces_st_trg enable;


-- sqlcl_snapshot {"hash":"71fb8f48d64bd6059bbfe7bb37ac57f470808942","type":"TRIGGER","name":"INTERFACES_ST_TRG","schemaName":"WKSP_DTESCPROD","sxml":""}