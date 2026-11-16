create index wksp_dtescprod.idx_audit_detail_master on
    wksp_dtescprod.audit_detail (
        audit_id
    );


-- sqlcl_snapshot {"hash":"7b483b001c413d7709da97c561af0a6cf600cba3","type":"INDEX","name":"IDX_AUDIT_DETAIL_MASTER","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_AUDIT_DETAIL_MASTER</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>AUDIT_DETAIL</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>AUDIT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}