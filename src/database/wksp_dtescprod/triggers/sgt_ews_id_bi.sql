create or replace editionable trigger wksp_dtescprod.sgt_ews_id_bi before
    insert on wksp_dtescprod.sgt_enlaces_wan_servicio
    for each row
    when ( new.id is null )
begin
    select
        sgt_enlaces_wan_servicio_id_seq.nextval
    into :new.id
    from
        dual;

end;
/

alter trigger wksp_dtescprod.sgt_ews_id_bi enable;


-- sqlcl_snapshot {"hash":"b232f2780de5978f67fd35d1d8644476517b49e4","type":"TRIGGER","name":"SGT_EWS_ID_BI","schemaName":"WKSP_DTESCPROD","sxml":""}