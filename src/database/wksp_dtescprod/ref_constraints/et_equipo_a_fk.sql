alter table wksp_dtescprod.sgt_enlaces_tramos
    add constraint et_equipo_a_fk
        foreign key ( equipo_a_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"c9b7cbcb9253ccde45a28869be728a5d353564d1","type":"REF_CONSTRAINT","name":"ET_EQUIPO_A_FK","schemaName":"WKSP_DTESCPROD","sxml":""}