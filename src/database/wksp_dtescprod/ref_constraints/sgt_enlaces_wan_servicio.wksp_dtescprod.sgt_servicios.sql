alter table wksp_dtescprod.sgt_enlaces_wan_servicio
    add
        foreign key ( servicio_id )
            references wksp_dtescprod.sgt_servicios ( id )
        enable;


-- sqlcl_snapshot {"hash":"64853be83adb72f3f880baa4aee8b812a7a0c7fb","type":"REF_CONSTRAINT","name":"SGT_ENLACES_WAN_SERVICIO.WKSP_DTESCPROD.SGT_SERVICIOS","schemaName":"WKSP_DTESCPROD","sxml":""}