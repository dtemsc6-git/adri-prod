alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_fo
        foreign key ( fo_id )
            references wksp_dtescprod.sgt_enlaces_fo ( id )
        enable;


-- sqlcl_snapshot {"hash":"e7a2b6c5b725e34148dd364695734081c13d74a2","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_FO","schemaName":"WKSP_DTESCPROD","sxml":""}