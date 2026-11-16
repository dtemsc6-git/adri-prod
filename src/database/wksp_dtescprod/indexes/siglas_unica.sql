create unique index wksp_dtescprod.siglas_unica on
    wksp_dtescprod.sgt_tipo_equipos ( upper(siglas) );


-- sqlcl_snapshot {"hash":"52a49ab1c8b81edae17b2cb1467062209f81cbdd","type":"INDEX","name":"SIGLAS_UNICA","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SIGLAS_UNICA</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_TIPO_EQUIPOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"SIGLAS\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}