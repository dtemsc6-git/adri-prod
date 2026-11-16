alter table wksp_dtescprod.sgt_interfaces_l3
    add constraint sgt_interfaces_l3_fk
        foreign key ( interface_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"abd6d7934fce39ef67f1133605e2b167101e18e4","type":"REF_CONSTRAINT","name":"SGT_INTERFACES_L3_FK","schemaName":"WKSP_DTESCPROD","sxml":""}