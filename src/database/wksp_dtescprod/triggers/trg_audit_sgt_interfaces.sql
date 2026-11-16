create or replace editionable trigger wksp_dtescprod.trg_audit_sgt_interfaces after
    insert or update or delete on wksp_dtescprod.sgt_interfaces
    for each row
declare
    v_audit_id    number;
    v_pk_value    varchar2(100);
    v_action_type varchar2(10);
begin
    if inserting then
        v_action_type := 'INSERT';
        v_pk_value := to_char(:new.id);
    elsif updating then
        v_action_type := 'UPDATE';
        v_pk_value := to_char(:new.id);
    elsif deleting then
        v_action_type := 'DELETE';
        v_pk_value := to_char(:old.id);
    end if;

    v_audit_id := audit_pkg.start_audit(
        p_table_name => 'SGT_INTERFACES',
        p_action     => v_action_type
    );
    if inserting then
        if :new.equipo_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_ID',
                                  null,
                                  to_char(:new.equipo_id));
        end if;

        if :new.nombre is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  null,
                                  :new.nombre);

        end if;

        if :new.etiqueta is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ETIQUETA',
                                  null,
                                  :new.etiqueta);
        end if;

        if :new.estado is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ESTADO',
                                  null,
                                  :new.estado);
        end if;  
        /*  
        IF :NEW.MODO IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'MODO', NULL, :NEW.MODO);  
        END IF;  
          
        IF :NEW.DUPLEX IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'DUPLEX', NULL, :NEW.DUPLEX);  
        END IF;  
        */
        if :new.tipo_interface_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_INTERFACE_ID',
                                  null,
                                  to_char(:new.tipo_interface_id));
        end if;

        if :new.tx_en_dbm is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TX_EN_DBM',
                                  null,
                                  :new.tx_en_dbm);
        end if;

        if :new.rx_en_dbm is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'RX_EN_DBM',
                                  null,
                                  :new.rx_en_dbm);
        end if;

        if :new.mac_address is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'MAC_ADDRESS',
                                  null,
                                  :new.mac_address);
        end if;  
        /*  
        IF :NEW.NUMERO_SERIE IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'NUMERO_SERIE', NULL, :NEW.NUMERO_SERIE);  
        END IF;  
          
        IF :NEW.HW_VERSION IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'HW_VERSION', NULL, :NEW.HW_VERSION);  
        END IF;  
          
        IF :NEW.SW_VERSION IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'SW_VERSION', NULL, :NEW.SW_VERSION);  
        END IF;  
        */
    elsif updating then
        if nvl(:old.equipo_id,
               -1) != nvl(:new.equipo_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_ID',
                                  to_char(:old.equipo_id),
                                  to_char(:new.equipo_id));
        end if;

        if nvl(:old.nombre,
               'NULL') != nvl(:new.nombre,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  :old.nombre,
                                  :new.nombre);

        end if;

        if nvl(:old.etiqueta,
               'NULL') != nvl(:new.etiqueta,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ETIQUETA',
                                  :old.etiqueta,
                                  :new.etiqueta);
        end if;

        if nvl(:old.estado,
               'NULL') != nvl(:new.estado,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ESTADO',
                                  :old.estado,
                                  :new.estado);
        end if;  
        /*  
        IF NVL(:OLD.MODO, 'NULL') != NVL(:NEW.MODO, 'NULL') THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'MODO', :OLD.MODO, :NEW.MODO);  
        END IF;  
          
        IF NVL(:OLD.DUPLEX, 'NULL') != NVL(:NEW.DUPLEX, 'NULL') THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'DUPLEX', :OLD.DUPLEX, :NEW.DUPLEX);  
        END IF;  
        */
        if nvl(:old.tipo_interface_id,
               -1) != nvl(:new.tipo_interface_id,
                          -1) then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_INTERFACE_ID',
                                  to_char(:old.tipo_interface_id),
                                  to_char(:new.tipo_interface_id));
        end if;

        if nvl(:old.tx_en_dbm,
               'NULL') != nvl(:new.tx_en_dbm,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TX_EN_DBM',
                                  :old.tx_en_dbm,
                                  :new.tx_en_dbm);
        end if;

        if nvl(:old.rx_en_dbm,
               'NULL') != nvl(:new.rx_en_dbm,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'RX_EN_DBM',
                                  :old.rx_en_dbm,
                                  :new.rx_en_dbm);
        end if;

        if nvl(:old.mac_address,
               'NULL') != nvl(:new.mac_address,
                              'NULL') then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'MAC_ADDRESS',
                                  :old.mac_address,
                                  :new.mac_address);
        end if;  
        /*  
        IF NVL(:OLD.NUMERO_SERIE, 'NULL') != NVL(:NEW.NUMERO_SERIE, 'NULL') THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'NUMERO_SERIE', :OLD.NUMERO_SERIE, :NEW.NUMERO_SERIE);  
        END IF;  
          
        IF NVL(:OLD.HW_VERSION, 'NULL') != NVL(:NEW.HW_VERSION, 'NULL') THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'HW_VERSION', :OLD.HW_VERSION, :NEW.HW_VERSION);  
        END IF;  
          
        IF NVL(:OLD.SW_VERSION, 'NULL') != NVL(:NEW.SW_VERSION, 'NULL') THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'SW_VERSION', :OLD.SW_VERSION, :NEW.SW_VERSION);  
        END IF;
        */
    elsif deleting then
        if :old.equipo_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'EQUIPO_ID',
                                  to_char(:old.equipo_id),
                                  null);
        end if;

        if :old.nombre is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'NOMBRE',
                                  :old.nombre,
                                  null);

        end if;

        if :old.etiqueta is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ETIQUETA',
                                  :old.etiqueta,
                                  null);
        end if;

        if :old.estado is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'ESTADO',
                                  :old.estado,
                                  null);
        end if;  
        /*  
        IF :OLD.MODO IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'MODO', :OLD.MODO, NULL);  
        END IF;  
          
        IF :OLD.DUPLEX IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'DUPLEX', :OLD.DUPLEX, NULL);  
        END IF;  
        */
        if :old.tipo_interface_id is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TIPO_INTERFACE_ID',
                                  to_char(:old.tipo_interface_id),
                                  null);
        end if;

        if :old.tx_en_dbm is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'TX_EN_DBM',
                                  :old.tx_en_dbm,
                                  null);
        end if;

        if :old.rx_en_dbm is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'RX_EN_DBM',
                                  :old.rx_en_dbm,
                                  null);
        end if;

        if :old.mac_address is not null then
            audit_pkg.log_changes(v_audit_id,
                                  'SGT_INTERFACES',
                                  'ID',
                                  v_pk_value,
                                  'MAC_ADDRESS',
                                  :old.mac_address,
                                  null);
        end if;  
        /*  
        IF :OLD.NUMERO_SERIE IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'NUMERO_SERIE', :OLD.NUMERO_SERIE, NULL);  
        END IF;  
          
        IF :OLD.HW_VERSION IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'HW_VERSION', :OLD.HW_VERSION, NULL);  
        END IF;  
          
        IF :OLD.SW_VERSION IS NOT NULL THEN  
            AUDIT_PKG.LOG_CHANGES(v_audit_id, 'SGT_INTERFACES', 'ID', v_pk_value, 'SW_VERSION', :OLD.SW_VERSION, NULL);  
        END IF;
        */
    end if;

exception
    when others then
        null;
end trg_audit_sgt_interfaces;
/

alter trigger wksp_dtescprod.trg_audit_sgt_interfaces enable;


-- sqlcl_snapshot {"hash":"4386f425b0368479277b3eeca815b2ff5fcdd2ad","type":"TRIGGER","name":"TRG_AUDIT_SGT_INTERFACES","schemaName":"WKSP_DTESCPROD","sxml":""}