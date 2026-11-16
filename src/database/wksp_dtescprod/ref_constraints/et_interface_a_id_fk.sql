alter table wksp_dtescprod.sgt_enlaces_tramos
    add constraint et_interface_a_id_fk
        foreign key ( interfaz_a_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"247dbbedf2e6e57cfea02b2f35dcbf079baa580c","type":"REF_CONSTRAINT","name":"ET_INTERFACE_A_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}