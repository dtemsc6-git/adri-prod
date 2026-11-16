create index wksp_dtescprod.idx_conexiones_servicio_compuesto on
    wksp_dtescprod.sgt_conexiones_servicio (
        servicio_id,
        enlace_tramo_id
    );


-- sqlcl_snapshot {"hash":"520bc05d8341cf4a1b6a8a13fe2dc0a27906f37f","type":"INDEX","name":"IDX_CONEXIONES_SERVICIO_COMPUESTO","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_CONEXIONES_SERVICIO_COMPUESTO</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_CONEXIONES_SERVICIO</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SERVICIO_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ENLACE_TRAMO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}