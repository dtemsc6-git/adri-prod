alter table wksp_dtescprod.sgt_enlaces_fo
    add constraint fo_equipo_a_id_fk
        foreign key ( equipo_id_a )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"018bd3aba378118ecc4d1e3e838b70703f02b6ca","type":"REF_CONSTRAINT","name":"FO_EQUIPO_A_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}