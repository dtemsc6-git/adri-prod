alter table wksp_dtescprod.sgt_enlaces_tramos
    add constraint et_interface_b_id_fk
        foreign key ( interfaz_b_id )
            references wksp_dtescprod.sgt_interfaces ( id )
        enable;


-- sqlcl_snapshot {"hash":"3420e846fe4cf368832cea23700cfdb31bcfaf0c","type":"REF_CONSTRAINT","name":"ET_INTERFACE_B_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}