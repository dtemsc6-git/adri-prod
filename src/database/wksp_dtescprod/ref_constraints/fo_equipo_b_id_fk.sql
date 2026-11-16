alter table wksp_dtescprod.sgt_enlaces_fo
    add constraint fo_equipo_b_id_fk
        foreign key ( equipo_id_b )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"c013af760e851021674a8e6e55e8f8a88c56cb94","type":"REF_CONSTRAINT","name":"FO_EQUIPO_B_ID_FK","schemaName":"WKSP_DTESCPROD","sxml":""}