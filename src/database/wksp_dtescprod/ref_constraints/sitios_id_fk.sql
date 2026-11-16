alter table wksp_dtescprod.sgt_sitios_enlace_wan
    add constraint sitios_id_fk
        foreign key ( sitio_id )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"df6d02a4e1add5d5be84bed2cd80d77a9bdcc547","type":"REF_CONSTRAINT","name":"SITIOS_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}