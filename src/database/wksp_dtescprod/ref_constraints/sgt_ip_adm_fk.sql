alter table wksp_dtescprod.sgt_ip_adm
    add constraint sgt_ip_adm_fk
        foreign key ( interface_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"6a72e48c1127d240b605f5704f24b7dbede7a0f9","type":"REF_CONSTRAINT","name":"SGT_IP_ADM_FK","schemaName":"WKSP_DTESCPROD","sxml":""}