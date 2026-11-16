create index wksp_dtescprod.idx_conexiones_enlace_wan_compuesto on
    wksp_dtescprod.sgt_conexiones_enlace_wan (
        enlace_wan_id,
        enlace_tramo_id
    );


-- sqlcl_snapshot {"hash":"2dd5d3056af5f7ae8ca43dd1e566de3bcd44e264","type":"INDEX","name":"IDX_CONEXIONES_ENLACE_WAN_COMPUESTO","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_CONEXIONES_ENLACE_WAN_COMPUESTO</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_CONEXIONES_ENLACE_WAN</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ENLACE_WAN_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ENLACE_TRAMO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}