alter table wksp_dtescprod.sgt_enlaces_fo
    add constraint fo_sitio_b_id_fk
        foreign key ( sitio_id_b )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"75032e85dcd45623a6dd85c62582c0ca27634af9","type":"REF_CONSTRAINT","name":"FO_SITIO_B_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}