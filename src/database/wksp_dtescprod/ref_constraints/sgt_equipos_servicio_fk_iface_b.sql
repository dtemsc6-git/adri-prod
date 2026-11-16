alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_iface_b
        foreign key ( interfaz_b_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"62034f9fe4c4ccaf417b0d40eb1f4d2ec7edde6a","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_IFACE_B","schemaName":"WKSP_DTESCPROD","sxml":""}