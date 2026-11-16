alter table wksp_dtescprod.sgt_enlaces_wan
    add constraint enlaces_wan_fk_tipo_wan_id
        foreign key ( tipo_wan_id )
            references wksp_dtescprod.sgt_tipo_wan ( id )
        enable;


-- sqlcl_snapshot {"hash":"94857329489bd369465eed6e4a28e29a88306d18","type":"REF_CONSTRAINT","name":"ENLACES_WAN_FK_TIPO_WAN_ID","schemaName":"WKSP_DTESCPROD","sxml":""}