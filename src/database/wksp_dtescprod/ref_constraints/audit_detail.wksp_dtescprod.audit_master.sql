alter table wksp_dtescprod.audit_detail
    add
        foreign key ( audit_id )
            references wksp_dtescprod.audit_master ( audit_id )
        enable;


-- sqlcl_snapshot {"hash":"c9892909037ddcb0ed81d1773d409cfb9fd8e8ae","type":"REF_CONSTRAINT","name":"AUDIT_DETAIL.WKSP_DTESCPROD.AUDIT_MASTER","schemaName":"WKSP_DTESCPROD","sxml":""}