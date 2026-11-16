alter table wksp_dtescprod.sgt_conexiones_servicio
    add
        foreign key ( enlace_tramo_id )
            references wksp_dtescprod.sgt_enlaces_tramos ( id )
        enable;


-- sqlcl_snapshot {"hash":"15cc10fdd034ac012f03c2b3f61d54b00ffdd6f6","type":"REF_CONSTRAINT","name":"SGT_CONEXIONES_SERVICIO.WKSP_DTESCPROD.SGT_ENLACES_TRAMOS","schemaName":"WKSP_DTESCPROD","sxml":""}