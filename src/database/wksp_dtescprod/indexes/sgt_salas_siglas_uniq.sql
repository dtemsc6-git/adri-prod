create unique index wksp_dtescprod.sgt_salas_siglas_uniq on
    wksp_dtescprod.sgt_salas (
        sitio_id,
    upper(siglas) );


-- sqlcl_snapshot {"hash":"45a351663c168d1b7acd3ae95a0102c43f534c29","type":"INDEX","name":"SGT_SALAS_SIGLAS_UNIQ","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_SALAS_SIGLAS_UNIQ</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_SALAS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SITIO_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"SIGLAS\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}