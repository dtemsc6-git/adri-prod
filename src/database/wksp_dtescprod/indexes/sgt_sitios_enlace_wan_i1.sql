create index wksp_dtescprod.sgt_sitios_enlace_wan_i1 on
    wksp_dtescprod.sgt_sitios_enlace_wan (
        sitio_id
    );


-- sqlcl_snapshot {"hash":"f1b6190a3ec08c8ab61ab2e4b063b3409e6c1c6b","type":"INDEX","name":"SGT_SITIOS_ENLACE_WAN_I1","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>SGT_SITIOS_ENLACE_WAN_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_SITIOS_ENLACE_WAN</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SITIO_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}