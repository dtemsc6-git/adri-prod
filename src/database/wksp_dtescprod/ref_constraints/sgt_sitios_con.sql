alter table wksp_dtescprod.sgt_sitios
    add constraint sgt_sitios_con
        foreign key ( ciudad_id )
            references wksp_dtescprod.sgt_ciudad ( id )
        enable;


-- sqlcl_snapshot {"hash":"cd37474d8a601d30cccfdf9e94ae43c2c7495b43","type":"REF_CONSTRAINT","name":"SGT_SITIOS_CON","schemaName":"WKSP_DTESCPROD","sxml":""}