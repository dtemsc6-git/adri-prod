create unique index wksp_dtescprod.sgt_zonas_chk_nombre on
    wksp_dtescprod.sgt_zonas ( upper(nombre) );


-- sqlcl_snapshot {"hash":"7f3e347a685d467308f7fa18323266d2a8510de8","type":"INDEX","name":"SGT_ZONAS_CHK_NOMBRE","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_ZONAS_CHK_NOMBRE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ZONAS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"NOMBRE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}