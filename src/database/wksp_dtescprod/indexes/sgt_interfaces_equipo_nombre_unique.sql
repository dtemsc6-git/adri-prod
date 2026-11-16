create unique index wksp_dtescprod.sgt_interfaces_equipo_nombre_unique on
    wksp_dtescprod.sgt_interfaces (
        equipo_id,
    upper(nombre) );


-- sqlcl_snapshot {"hash":"8028207c9eb153fc0cf9215a4fdd5aa5fdd91ac2","type":"INDEX","name":"SGT_INTERFACES_EQUIPO_NOMBRE_UNIQUE","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_INTERFACES_EQUIPO_NOMBRE_UNIQUE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_INTERFACES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EQUIPO_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"NOMBRE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}