create or replace function wksp_dtescprod.parse_flexible_date (
    p_date in varchar2
) return date is
    v_date date;
begin
    begin
        v_date := to_date ( p_date,
        'YYYY-MM-DD' );
    exception
        when others then
            begin
                v_date := to_date ( p_date,
                'DD-MM-YYYY' );
            exception
                when others then
                    begin
                        v_date := to_date ( p_date,
                        'YY-MM-DD' );
                    exception
                        when others then
                            v_date := null;
                    end;
            end;
    end;

    return v_date;
end;
/


-- sqlcl_snapshot {"hash":"2b58f3c7f5cf09cbd14b6d6d0ffd6c09e5118877","type":"FUNCTION","name":"PARSE_FLEXIBLE_DATE","schemaName":"WKSP_DTESCPROD","sxml":""}