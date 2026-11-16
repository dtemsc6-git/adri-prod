create index wksp_dtescprod.idx_cuidad_depto on
    wksp_dtescprod.sgt_ciudad (
        depto_id
    );


-- sqlcl_snapshot {"hash":"a4ae6eb870621151fa070d8c92345bf81baef911","type":"INDEX","name":"IDX_CUIDAD_DEPTO","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_CUIDAD_DEPTO</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_CIUDAD</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>DEPTO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}