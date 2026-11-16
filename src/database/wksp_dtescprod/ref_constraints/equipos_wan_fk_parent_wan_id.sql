alter table wksp_dtescprod.sgt_equipos_wan
    add constraint equipos_wan_fk_parent_wan_id
        foreign key ( parent_wan_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"3de0b444b016ef0161a5376133d262c25bfb9d24","type":"REF_CONSTRAINT","name":"EQUIPOS_WAN_FK_PARENT_WAN_ID","schemaName":"WKSP_DTESCPROD","sxml":""}