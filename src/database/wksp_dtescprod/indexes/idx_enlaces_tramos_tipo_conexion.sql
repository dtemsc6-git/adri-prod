create index wksp_dtescprod.idx_enlaces_tramos_tipo_conexion on
    wksp_dtescprod.sgt_enlaces_tramos (
        tipo_conexion
    );


-- sqlcl_snapshot {"hash":"cd51e5008abaf2219e07bdeb03bff687df27dcbb","type":"INDEX","name":"IDX_ENLACES_TRAMOS_TIPO_CONEXION","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_ENLACES_TRAMOS_TIPO_CONEXION</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_TRAMOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TIPO_CONEXION</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}