create index wksp_dtescprod.sgt_enlaces_wan_servicio_i1 on
    wksp_dtescprod.sgt_enlaces_wan_servicio (
        servicio_id
    );


-- sqlcl_snapshot {"hash":"0920c06fef484232991e4a6242acbf9f43d9ac18","type":"INDEX","name":"SGT_ENLACES_WAN_SERVICIO_I1","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_ENLACES_WAN_SERVICIO_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_WAN_SERVICIO</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SERVICIO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}