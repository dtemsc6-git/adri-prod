alter table wksp_dtescprod.sgt_racks
    add constraint fk_registros_racks
        foreign key ( sala_id )
            references wksp_dtescprod.sgt_salas ( id )
        enable;


-- sqlcl_snapshot {"hash":"b1221600cafc1eb3c8573696b4ca5216b52b945f","type":"REF_CONSTRAINT","name":"FK_REGISTROS_RACKS","schemaName":"WKSP_DTESCPROD","sxml":""}