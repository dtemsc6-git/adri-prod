alter table wksp_dtescprod.sgt_sitios_enlace_wan
    add constraint enlace_wan_fk_ck
        foreign key ( enlace_wan_id )
            references wksp_dtescprod.sgt_enlaces_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"1cc733cb0e2700f7aeb3223e3f80c54034930ee1","type":"REF_CONSTRAINT","name":"ENLACE_WAN_FK_CK","schemaName":"WKSP_DTESCPROD","sxml":""}