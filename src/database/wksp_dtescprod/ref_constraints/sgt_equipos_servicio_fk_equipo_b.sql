alter table wksp_dtescprod.sgt_equipos_servicio
    add constraint sgt_equipos_servicio_fk_equipo_b
        foreign key ( equipo_b_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"07eaeacfcaab1230325f46db4193a3e8f79d00be","type":"REF_CONSTRAINT","name":"SGT_EQUIPOS_SERVICIO_FK_EQUIPO_B","schemaName":"WKSP_DTESCPROD","sxml":""}