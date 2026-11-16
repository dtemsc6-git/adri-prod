create or replace function wksp_dtescprod.get_edges_equipos (
    p_servicio_id in number
) return clob as
    l_edges clob;
begin
    select
        json_arrayagg(
            json_object(
                'from' value origen_id,
                'to' value destino_id,
                'label' value edge_label,
                'edge_id' value edge_id
            )
        returning clob)
    into l_edges
    from
        (
            select
                eq_id     as origen_id,
                eq_b_id   as destino_id,
                fo_nombre as edge_label,
                conn_id   as edge_id
            from
                v_conexiones_general_v2
            where
                serv_id = p_servicio_id
            order by
                eq_id
        );

    return l_edges;
end get_edges_equipos;
/


-- sqlcl_snapshot {"hash":"199bbeee41566bdf610c92a5dcf2dd0643c25f6c","type":"FUNCTION","name":"GET_EDGES_EQUIPOS","schemaName":"WKSP_DTESCPROD","sxml":""}