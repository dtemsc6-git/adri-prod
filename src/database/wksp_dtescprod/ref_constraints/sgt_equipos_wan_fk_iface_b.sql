alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_iface_b
        foreign key ( interfaz_b_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"85d4fc48f2eb8b60948f7319296d1f275e0ebca3","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_IFACE_B","schemaName":"WKSP_DTESCPROD","sxml":""}