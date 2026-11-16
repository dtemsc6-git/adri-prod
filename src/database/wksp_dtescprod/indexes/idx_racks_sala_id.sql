create index wksp_dtescprod.idx_racks_sala_id on
    wksp_dtescprod.sgt_racks (
        sala_id
    );


-- sqlcl_snapshot {"hash":"73bf7e38f6afad751b18082b9330fc7e1e7c6d75","type":"INDEX","name":"IDX_RACKS_SALA_ID","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_RACKS_SALA_ID</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_RACKS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SALA_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}