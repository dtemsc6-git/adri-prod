alter table wksp_dtescprod.sgt_conexiones_enlace_wan
    add constraint fk_conexiones_enlace_tramo
        foreign key ( enlace_tramo_id )
            references wksp_dtescprod.sgt_enlaces_tramos ( id )
        enable;


-- sqlcl_snapshot {"hash":"b5a34f3014797f4a225fff9c45916b003762df9f","type":"REF_CONSTRAINT","name":"FK_CONEXIONES_ENLACE_TRAMO","schemaName":"WKSP_DTESCPROD","sxml":""}