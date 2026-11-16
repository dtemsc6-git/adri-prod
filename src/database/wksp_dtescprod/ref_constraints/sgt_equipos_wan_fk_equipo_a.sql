alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_equipo_a
        foreign key ( equipo_a_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"601f55267d4468d9b1ea830ad7386065ce51f358","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_EQUIPO_A","schemaName":"WKSP_DTESCPROD","sxml":""}