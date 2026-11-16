create or replace editionable trigger wksp_dtescprod.trg_test_archivos_obsoleto before
    insert or update or delete on wksp_dtescprod.sgt_archivos
    for each row
begin
    if ( :new.estado = 2 ) then
        :new.internal_attr := 'obsoleto';
    end if;
end;
/

alter trigger wksp_dtescprod.trg_test_archivos_obsoleto enable;


-- sqlcl_snapshot {"hash":"1483bdea74f18709cef86ce4c91fa899e6ef17cb","type":"TRIGGER","name":"TRG_TEST_ARCHIVOS_OBSOLETO","schemaName":"WKSP_DTESCPROD","sxml":""}