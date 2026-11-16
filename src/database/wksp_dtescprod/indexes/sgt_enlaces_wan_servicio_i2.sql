create index wksp_dtescprod.sgt_enlaces_wan_servicio_i2 on
    wksp_dtescprod.sgt_enlaces_wan_servicio (
        enlace_id
    );


-- sqlcl_snapshot {"hash":"7203e033c49f7b173c02d1bcfa0711d776df29a3","type":"INDEX","name":"SGT_ENLACES_WAN_SERVICIO_I2","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_ENLACES_WAN_SERVICIO_I2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_WAN_SERVICIO</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ENLACE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}