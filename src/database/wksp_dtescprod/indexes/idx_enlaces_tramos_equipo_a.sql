create index wksp_dtescprod.idx_enlaces_tramos_equipo_a on
    wksp_dtescprod.sgt_enlaces_tramos (
        equipo_a_id
    );


-- sqlcl_snapshot {"hash":"219a57d96f1b0c28e6d8451f4c231db2d49046b8","type":"INDEX","name":"IDX_ENLACES_TRAMOS_EQUIPO_A","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_ENLACES_TRAMOS_EQUIPO_A</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_TRAMOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EQUIPO_A_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}