alter table wksp_dtescprod.sgt_enlaces_tramos
    add constraint et_sitio_a_fk
        foreign key ( lado_id )
            references wksp_dtescprod.sgt_sitios ( id )
        enable;


-- sqlcl_snapshot {"hash":"a3d91aa8d4af531d72364867c0c3645532dd880b","type":"REF_CONSTRAINT","name":"ET_SITIO_A_FK","schemaName":"WKSP_DTESCPROD","sxml":""}