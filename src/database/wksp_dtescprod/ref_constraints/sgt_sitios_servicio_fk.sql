alter table wksp_dtescprod.sgt_sitios_servicio
    add constraint sgt_sitios_servicio_fk
        foreign key ( servicio_id )
            references wksp_dtescprod.sgt_servicios ( id )
        enable;


-- sqlcl_snapshot {"hash":"1c4fdaacd41e766ee45f0181cff479b341a16af8","type":"REF_CONSTRAINT","name":"SGT_SITIOS_SERVICIO_FK","schemaName":"WKSP_DTESCPROD","sxml":""}