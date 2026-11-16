alter table wksp_dtescprod.sgt_enlaces_wan_servicio
    add constraint sgt_enlaces_wan_servicio_con
        foreign key ( enlace_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"0b0a28d0a877967a738dee70ca55062a76a49234","type":"REF_CONSTRAINT","name":"SGT_ENLACES_WAN_SERVICIO_CON","schemaName":"WKSP_DTESCPROD","sxml":""}