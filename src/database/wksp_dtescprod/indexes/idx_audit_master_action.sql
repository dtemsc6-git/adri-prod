create index wksp_dtescprod.idx_audit_master_action on
    wksp_dtescprod.audit_master (
        action_type,
        timestamp
    desc );


-- sqlcl_snapshot {"hash":"c7ca5005398017c99c066cf75cdde09c88b5ec09","type":"INDEX","name":"IDX_AUDIT_MASTER_ACTION","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_AUDIT_MASTER_ACTION</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>AUDIT_MASTER</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACTION_TYPE</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>\"TIMESTAMP\"</DEFAULT_EXPRESSION>\n            <DESC></DESC>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}