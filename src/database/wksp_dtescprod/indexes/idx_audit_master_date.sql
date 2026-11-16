create index wksp_dtescprod.idx_audit_master_date on
    wksp_dtescprod.audit_master (
        timestamp
    );


-- sqlcl_snapshot {"hash":"9ede26c190aeee2e9a7b59af47572ee93574cb6e","type":"INDEX","name":"IDX_AUDIT_MASTER_DATE","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_AUDIT_MASTER_DATE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>AUDIT_MASTER</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TIMESTAMP</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}