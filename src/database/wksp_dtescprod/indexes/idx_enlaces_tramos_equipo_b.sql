create index wksp_dtescprod.idx_enlaces_tramos_equipo_b on
    wksp_dtescprod.sgt_enlaces_tramos (
        equipo_b_id
    );


-- sqlcl_snapshot {"hash":"1687b5f86c3f9ef9ddb228fb6e791e8a74ed993e","type":"INDEX","name":"IDX_ENLACES_TRAMOS_EQUIPO_B","schemaName":"WKSP_DTESCPROD","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n   <NAME>IDX_ENLACES_TRAMOS_EQUIPO_B</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DTESCPROD</SCHEMA>\n         <NAME>SGT_ENLACES_TRAMOS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EQUIPO_B_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}