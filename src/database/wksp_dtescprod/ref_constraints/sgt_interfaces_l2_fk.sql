alter table wksp_dtescprod.sgt_interfaces_l2
    add constraint sgt_interfaces_l2_fk
        foreign key ( interface_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"67a2bc348eb98632ea037ab24d42471e6be01882","type":"REF_CONSTRAINT","name":"SGT_INTERFACES_L2_FK","schemaName":"WKSP_DTESCPROD","sxml":""}