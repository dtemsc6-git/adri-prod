alter table wksp_dtescprod.sgt_enlaces_tramos
    add constraint et_equipo_b_fk
        foreign key ( equipo_b_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"1efcf056b2c9da2b97c63aef364bd6c232996cf6","type":"REF_CONSTRAINT","name":"ET_EQUIPO_B_FK","schemaName":"WKSP_DTESCPROD","sxml":""}