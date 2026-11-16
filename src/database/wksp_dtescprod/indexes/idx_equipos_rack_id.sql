create index wksp_dtescprod.idx_equipos_rack_id on
    wksp_dtescprod.sgt_equipos (
        rack_id
    );


-- sqlcl_snapshot {"hash":"0209e26a3cbc017beaeb5c8b8a71ce70195b20fc","type":"INDEX","name":"IDX_EQUIPOS_RACK_ID","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_EQUIPOS_RACK_ID</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_EQUIPOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>RACK_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}