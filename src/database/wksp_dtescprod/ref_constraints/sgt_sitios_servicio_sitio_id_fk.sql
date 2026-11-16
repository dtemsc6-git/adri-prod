alter table wksp_dtescprod.sgt_sitios_servicio
    add constraint sgt_sitios_servicio_sitio_id_fk
        foreign key ( sitio_id )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"2008968d11ab74c3f880900758968dbf94d7e8b2","type":"REF_CONSTRAINT","name":"SGT_SITIOS_SERVICIO_SITIO_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}