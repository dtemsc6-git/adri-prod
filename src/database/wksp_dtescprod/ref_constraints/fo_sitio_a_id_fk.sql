alter table wksp_dtescprod.sgt_enlaces_fo
    add constraint fo_sitio_a_id_fk
        foreign key ( sitio_id_a )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"b5658f12ef54be3f661e279e76769c9262c4b3a1","type":"REF_CONSTRAINT","name":"FO_SITIO_A_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}