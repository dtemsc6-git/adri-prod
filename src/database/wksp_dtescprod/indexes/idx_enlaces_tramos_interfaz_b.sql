create index wksp_dtescprod.idx_enlaces_tramos_interfaz_b on
    wksp_dtescprod.sgt_enlaces_tramos (
        interfaz_b_id
    );


-- sqlcl_snapshot {"hash":"236918b03f0e83c81389adedb3102b663f4acd09","type":"INDEX","name":"IDX_ENLACES_TRAMOS_INTERFAZ_B","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_ENLACES_TRAMOS_INTERFAZ_B</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_TRAMOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INTERFAZ_B_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}