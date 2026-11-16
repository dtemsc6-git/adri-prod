alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_fo
        foreign key ( fo_id )
            references wksp_dtescprod.sgt_enlaces_fo ( id )
        enable;


-- sqlcl_snapshot {"hash":"61c288d2b64bd2597ce0387aabb375c82b9e37dc","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_FO","schemaName":"WKSP_DTESCPROD","sxml":""}