alter table wksp_dtescprod.sgt_salas
    add constraint sgt_salas_con
        foreign key ( sitio_id )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"88d06ab9caba51a73d92f2be2f2000ed5e7aae4c","type":"REF_CONSTRAINT","name":"SGT_SALAS_CON","schemaName":"WKSP_DTESCPROD","sxml":""}