create index wksp_dtescprod.idx_salas_sitio_id on
    wksp_dtescprod.sgt_salas (
        sitio_id
    );


-- sqlcl_snapshot {"hash":"eb2fb7f4c4e243f20f5b1c309d475c736c86572a","type":"INDEX","name":"IDX_SALAS_SITIO_ID","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_SALAS_SITIO_ID</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_SALAS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SITIO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}