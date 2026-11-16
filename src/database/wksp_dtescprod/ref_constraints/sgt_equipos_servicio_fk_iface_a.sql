alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_iface_a
        foreign key ( interfaz_a_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"f49c76fe46c0c93b4f66c87bcfaba52bc4921a60","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_IFACE_A","schemaName":"WKSP_DTESCPROD","sxml":""}