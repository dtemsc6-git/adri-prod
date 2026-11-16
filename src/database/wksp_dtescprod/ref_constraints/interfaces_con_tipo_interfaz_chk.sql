alter table wksp_dtescprod.sgt_interfaces
    add constraint interfaces_con_tipo_interfaz_chk
        foreign key ( tipo_interface_id )
            references wksp_dtescprod.sgt_tipo_interfaz ( id )
        enable;


-- sqlcl_snapshot {"hash":"df10646b46bdd9b3248f8da03b20634597e3e7cd","type":"REF_CONSTRAINT","name":"INTERFACES_CON_TIPO_INTERFAZ_CHK","schemaName":"WKSP_DTESCPROD","sxml":""}