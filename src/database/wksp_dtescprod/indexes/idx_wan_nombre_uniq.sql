create unique index wksp_dtescprod.idx_wan_nombre_uniq on
    wksp_dtescprod.sgt_enlaces_wan ( upper(nombre) );


-- sqlcl_snapshot {"hash":"f3a1114f18d58f7a20035b757c95ed7fcf6cde62","type":"INDEX","name":"IDX_WAN_NOMBRE_UNIQ","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_WAN_NOMBRE_UNIQ</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_WAN</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"NOMBRE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}