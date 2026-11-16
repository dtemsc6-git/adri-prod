create or replace force editionable view wksp_dtescprod.v_sitios_gps (
    id,
    zona_id,
    zona,
    departamento,
    ciudad,
    siglas,
    tipo_sitio,
    lat,
    lon,
    url
) as
    select
        s.id,
        z.id,
        z.nombre,
        d.nombre,
        c.nombre,
        s.siglas,
        s.tipo_de_sitio,
        ( latitud ),
        ( longitud ),
        "UBICACIÓN"
    from
        sgt_sitios s
        left join sgt_ciudad c on s.ciudad_id = c.id
        left join sgt_depto  d on c.depto_id = d.id
        join sgt_zonas  z on s.zona_id = z.id;


-- sqlcl_snapshot {"hash":"1cdb9a746be219ccebf3fd33432eb73e847058dd","type":"VIEW","name":"V_SITIOS_GPS","schemaName":"WKSP_DTESCPROD","sxml":""}