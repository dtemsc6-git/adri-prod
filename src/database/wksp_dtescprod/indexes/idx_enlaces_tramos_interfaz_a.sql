create index wksp_dtescprod.idx_enlaces_tramos_interfaz_a on
    wksp_dtescprod.sgt_enlaces_tramos (
        interfaz_a_id
    );


-- sqlcl_snapshot {"hash":"8cc7704c5ae0cf475c5f814fe8c2667d30503237","type":"INDEX","name":"IDX_ENLACES_TRAMOS_INTERFAZ_A","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_ENLACES_TRAMOS_INTERFAZ_A</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_TRAMOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INTERFAZ_A_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}