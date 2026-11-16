alter table wksp_dtescprod.sgt_equipos
    add constraint sitio_id_fk
        foreign key ( sitio_id )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"feb660fcb78fdafc0b5628cecebcabe20d0386c4","type":"REF_CONSTRAINT","name":"SITIO_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}