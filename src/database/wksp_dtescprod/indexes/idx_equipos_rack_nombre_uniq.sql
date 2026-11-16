create unique index wksp_dtescprod.idx_equipos_rack_nombre_uniq on
    wksp_dtescprod.sgt_equipos (
        rack_id,
    upper(nombre) );


-- sqlcl_snapshot {"hash":"07bece7d508bf684b416d65986436e8f8a5ec67b","type":"INDEX","name":"IDX_EQUIPOS_RACK_NOMBRE_UNIQ","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_EQUIPOS_RACK_NOMBRE_UNIQ</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_EQUIPOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>RACK_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"NOMBRE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}