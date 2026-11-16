create index wksp_dtescprod.sgt_sitios_servicio_i2 on
    wksp_dtescprod.sgt_sitios_servicio (
        servicio_id
    );


-- sqlcl_snapshot {"hash":"da970b02478f9c394fbff43bf69df6abae1769ed","type":"INDEX","name":"SGT_SITIOS_SERVICIO_I2","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_SITIOS_SERVICIO_I2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_SITIOS_SERVICIO</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SERVICIO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}