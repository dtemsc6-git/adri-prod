alter table wksp_dtescprod.sgt_conexiones_enlace_wan
    add constraint fk_conexiones_enlace_wan
        foreign key ( enlace_wan_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"58b2a0e231e36b9990313cce5b7a575c4d755d99","type":"REF_CONSTRAINT","name":"FK_CONEXIONES_ENLACE_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}