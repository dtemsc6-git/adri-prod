alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_wan
        foreign key ( wan_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"02c17f031d82bf89b46a47786427f2395c0884b9","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}