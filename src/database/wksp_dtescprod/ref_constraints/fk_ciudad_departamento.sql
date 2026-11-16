alter table wksp_dtescprod.sgt_ciudad
    add constraint fk_ciudad_departamento
        foreign key ( depto_id )
            references wksp_dtescprod.sgt_depto ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"86a6120f8fd0a63cf1b2e1d8f1490e4be52a2847","type":"REF_CONSTRAINT","name":"FK_CIUDAD_DEPARTAMENTO","schemaName":"WKSP_DTESCPROD","sxml":""}