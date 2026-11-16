alter table wksp_dtescprod.sgt_equipos
    add constraint equipos_con_tipo_equipos_chk
        foreign key ( tipo_equipo_id )
            references wksp_dtescprod.sgt_tipo_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"0bc097c771e661cb008b8352f108f033a570f039","type":"REF_CONSTRAINT","name":"EQUIPOS_CON_TIPO_EQUIPOS_CHK","schemaName":"WKSP_DTESCPROD","sxml":""}