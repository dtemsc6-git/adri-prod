alter table wksp_dtescprod.sgt_sitios
    add constraint fk_sitios_zonas
        foreign key ( zona_id )
            references wksp_dtescprod.sgt_zonas ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"8d8f14e085210784a1d5321fe6b0b1e31114abe1","type":"REF_CONSTRAINT","name":"FK_SITIOS_ZONAS","schemaName":"WKSP_DTESCPROD","sxml":""}