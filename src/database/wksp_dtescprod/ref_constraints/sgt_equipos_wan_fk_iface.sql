alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_iface
        foreign key ( interfaz_a_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"e8bf0acfa19c66c62820d1900924fcf537eb8c77","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_IFACE","schemaName":"WKSP_DTESCPROD","sxml":""}