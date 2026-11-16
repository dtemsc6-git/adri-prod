alter table wksp_dtescprod.sgt_equipos
    add constraint equipos_con_racks_chk
        foreign key ( rack_id )
            references wksp_dtescprod.sgt_racks ( id )
        enable;


-- sqlcl_snapshot {"hash":"ffb038688fc9cb40b1bed0a4aa92d051f3d430cf","type":"REF_CONSTRAINT","name":"EQUIPOS_CON_RACKS_CHK","schemaName":"WKSP_DTESCPROD","sxml":""}