alter table wksp_dtescprod.sgt_conexiones_servicio
    add
        foreign key ( servicio_id )
            references wksp_dtescprod.sgt_servicios ( id )
        enable;


-- sqlcl_snapshot {"hash":"0222b533250fc50d9a3b2d8ff2d25a94cc773beb","type":"REF_CONSTRAINT","name":"SGT_CONEXIONES_SERVICIO.WKSP_DTESCPROD.SGT_SERVICIOS","schemaName":"WKSP_DTESCPROD","sxml":""}