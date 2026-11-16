alter table wksp_dtescprod.sgt_interfaces
    add constraint interfaces_con_equipos_chk
        foreign key ( equipo_id )
            references wksp_dtescprod.sgt_equipos ( id )
        enable;


-- sqlcl_snapshot {"hash":"4800b503e43536af89d1a89dc457e998b7a10c95","type":"REF_CONSTRAINT","name":"INTERFACES_CON_EQUIPOS_CHK","schemaName":"WKSP_DTESCPROD","sxml":""}