alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_wan
        foreign key ( wan_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"3266a965a82e887e1019b3289401be6b03dad630","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_WAN","schemaName":"WKSP_DTESCPROD","sxml":""}