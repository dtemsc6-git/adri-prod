alter table wksp_dtescprod.sgt_equipos_wan
    add constraint sgt_equipos_wan_fk_equipo_b
        foreign key ( equipo_b_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"d3475a812d42f7ba4e7adde3328b6a804ba9963e","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_WAN_FK_EQUIPO_B","schemaName":"WKSP_DTESCPROD","sxml":""}