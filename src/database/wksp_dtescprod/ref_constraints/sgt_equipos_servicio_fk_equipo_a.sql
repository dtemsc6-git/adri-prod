alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_equipo_a
        foreign key ( equipo_a_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"5ba5cb62bd12fa0e653067618af397fbb7324fda","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_EQUIPO_A","schemaName":"WKSP_DTESCPROD","sxml":""}