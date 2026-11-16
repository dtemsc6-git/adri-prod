create index wksp_dtescprod.idx_audit_detail_pk on
    wksp_dtescprod.audit_detail (
        table_name,
        pk_value,
        audit_id
    desc );


-- sqlcl_snapshot {"hash":"bdc85f164c03ce8490e76bf68ea43905fe11ca8e","type":"INDEX","name":"IDX_AUDIT_DETAIL_PK","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_AUDIT_DETAIL_PK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>AUDIT_DETAIL</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TABLE_NAME</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PK_VALUE</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>\"AUDIT_ID\"</DEFAULT_EXPRESSION>\n            <DESC></DESC>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}