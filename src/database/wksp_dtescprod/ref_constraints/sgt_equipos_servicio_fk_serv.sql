alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_serv
        foreign key ( servicio_id )
            references wksp_dtescprod.sgt_servicios ( id )
        enable;


-- sqlcl_snapshot {"hash":"9935d365a3b366fe1c241d63eb01f745e77ae7ba","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_SERV","schemaName":"WKSP_DTESCPROD","sxml":""}