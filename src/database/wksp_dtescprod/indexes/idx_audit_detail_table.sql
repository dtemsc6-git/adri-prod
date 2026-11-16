create index wksp_dtescprod.idx_audit_detail_table on
    wksp_dtescprod.audit_detail (
        audit_id,
        table_name
    );


-- sqlcl_snapshot {"hash":"9e49345751fd6f9b5f3fc8c4ea2815688782e544","type":"INDEX","name":"IDX_AUDIT_DETAIL_TABLE","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_AUDIT_DETAIL_TABLE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>AUDIT_DETAIL</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>AUDIT_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>TABLE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}