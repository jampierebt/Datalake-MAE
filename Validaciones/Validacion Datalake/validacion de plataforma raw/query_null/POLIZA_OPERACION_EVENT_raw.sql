SELECT SUM(CASE WHEN TRIM(UPPER(PROD.numero_poliza)) IS NULL AND TRIM(UPPER(UAT.numero_poliza))="" THEN 1 ELSE 0 END) AS DIFF_numero_poliza
,SUM(CASE WHEN TRIM(UPPER(PROD.id_poliza)) IS NULL AND TRIM(UPPER(UAT.id_poliza))="" THEN 1 ELSE 0 END) AS DIFF_id_poliza
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_vigencia_inicio)) IS NULL AND TRIM(UPPER(UAT.fecha_vigencia_inicio))="" THEN 1 ELSE 0 END) AS DIFF_fecha_vigencia_inicio
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_vigencia_fin)) IS NULL AND TRIM(UPPER(UAT.fecha_vigencia_fin))="" THEN 1 ELSE 0 END) AS DIFF_fecha_vigencia_fin
,SUM(CASE WHEN TRIM(UPPER(PROD.frecuencia_poliza)) IS NULL AND TRIM(UPPER(UAT.frecuencia_poliza))="" THEN 1 ELSE 0 END) AS DIFF_frecuencia_poliza
,SUM(CASE WHEN TRIM(UPPER(PROD.productid)) IS NULL AND TRIM(UPPER(UAT.productid))="" THEN 1 ELSE 0 END) AS DIFF_productid
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_emision)) IS NULL AND TRIM(UPPER(UAT.fecha_emision))="" THEN 1 ELSE 0 END) AS DIFF_fecha_emision
,SUM(CASE WHEN TRIM(UPPER(PROD.nombre_producto)) IS NULL AND TRIM(UPPER(UAT.nombre_producto))="" THEN 1 ELSE 0 END) AS DIFF_nombre_producto
,SUM(CASE WHEN TRIM(UPPER(PROD.auditdate_system_date)) IS NULL AND TRIM(UPPER(UAT.auditdate_system_date))="" THEN 1 ELSE 0 END) AS DIFF_auditdate_system_date
,SUM(CASE WHEN TRIM(UPPER(PROD.operation_date)) IS NULL AND TRIM(UPPER(UAT.operation_date))="" THEN 1 ELSE 0 END) AS DIFF_operation_date
,SUM(CASE WHEN TRIM(UPPER(PROD.operation_datetime)) IS NULL AND TRIM(UPPER(UAT.operation_datetime))="" THEN 1 ELSE 0 END) AS DIFF_operation_datetime
,SUM(CASE WHEN TRIM(UPPER(PROD.estado_poliza)) IS NULL AND TRIM(UPPER(UAT.estado_poliza))="" THEN 1 ELSE 0 END) AS DIFF_estado_poliza
,SUM(CASE WHEN TRIM(UPPER(PROD.Effective_Date_From)) IS NULL AND TRIM(UPPER(UAT.Effective_Date_From))="" THEN 1 ELSE 0 END) AS DIFF_Effective_Date_From
,SUM(CASE WHEN TRIM(UPPER(PROD.Effective_Date_To)) IS NULL AND TRIM(UPPER(UAT.Effective_Date_To))="" THEN 1 ELSE 0 END) AS DIFF_Effective_Date_To
,SUM(CASE WHEN TRIM(UPPER(PROD.PROCESS_TYPE)) IS NULL AND TRIM(UPPER(UAT.PROCESS_TYPE))="" THEN 1 ELSE 0 END) AS DIFF_PROCESS_TYPE
,SUM(CASE WHEN TRIM(UPPER(PROD.STATUS_OPERATION)) IS NULL AND TRIM(UPPER(UAT.STATUS_OPERATION))="" THEN 1 ELSE 0 END) AS DIFF_STATUS_OPERATION
,SUM(CASE WHEN TRIM(UPPER(PROD.event)) IS NULL AND TRIM(UPPER(UAT.event))="" THEN 1 ELSE 0 END) AS DIFF_event
,SUM(CASE WHEN TRIM(UPPER(PROD.validationerror)) IS NULL AND TRIM(UPPER(UAT.validationerror))="" THEN 1 ELSE 0 END) AS DIFF_validationerror
,SUM(CASE WHEN TRIM(UPPER(PROD.concept_neta)) IS NULL AND TRIM(UPPER(UAT.concept_neta))="" THEN 1 ELSE 0 END) AS DIFF_concept_neta
,SUM(CASE WHEN TRIM(UPPER(PROD.concept_total)) IS NULL AND TRIM(UPPER(UAT.concept_total))="" THEN 1 ELSE 0 END) AS DIFF_concept_total
,SUM(CASE WHEN TRIM(UPPER(PROD.moneda)) IS NULL AND TRIM(UPPER(UAT.moneda))="" THEN 1 ELSE 0 END) AS DIFF_moneda
,SUM(CASE WHEN TRIM(UPPER(PROD.tipo_producto)) IS NULL AND TRIM(UPPER(UAT.tipo_producto))="" THEN 1 ELSE 0 END) AS DIFF_tipo_producto
,SUM(CASE WHEN TRIM(UPPER(PROD.oficina)) IS NULL AND TRIM(UPPER(UAT.oficina))="" THEN 1 ELSE 0 END) AS DIFF_oficina
,SUM(CASE WHEN TRIM(UPPER(PROD.indicador_renovacion)) IS NULL AND TRIM(UPPER(UAT.indicador_renovacion))="" THEN 1 ELSE 0 END) AS DIFF_indicador_renovacion
,SUM(CASE WHEN TRIM(UPPER(PROD.tipo_moneda)) IS NULL AND TRIM(UPPER(UAT.tipo_moneda))="" THEN 1 ELSE 0 END) AS DIFF_tipo_moneda
,SUM(CASE WHEN TRIM(UPPER(PROD.tipo_vigencia)) IS NULL AND TRIM(UPPER(UAT.tipo_vigencia))="" THEN 1 ELSE 0 END) AS DIFF_tipo_vigencia
,SUM(CASE WHEN TRIM(UPPER(PROD.vigencia)) IS NULL AND TRIM(UPPER(UAT.vigencia))="" THEN 1 ELSE 0 END) AS DIFF_vigencia
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_proxima_facturacion)) IS NULL AND TRIM(UPPER(UAT.fecha_proxima_facturacion))="" THEN 1 ELSE 0 END) AS DIFF_fecha_proxima_facturacion
,SUM(CASE WHEN TRIM(UPPER(PROD.canal_venta)) IS NULL AND TRIM(UPPER(UAT.canal_venta))="" THEN 1 ELSE 0 END) AS DIFF_canal_venta
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_proxima_imagen_prima)) IS NULL AND TRIM(UPPER(UAT.fecha_proxima_imagen_prima))="" THEN 1 ELSE 0 END) AS DIFF_fecha_proxima_imagen_prima
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_evento_anterior)) IS NULL AND TRIM(UPPER(UAT.fecha_evento_anterior))="" THEN 1 ELSE 0 END) AS DIFF_fecha_evento_anterior
,SUM(CASE WHEN TRIM(UPPER(PROD.tipo_poliza)) IS NULL AND TRIM(UPPER(UAT.tipo_poliza))="" THEN 1 ELSE 0 END) AS DIFF_tipo_poliza
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_suspension_cancelacion)) IS NULL AND TRIM(UPPER(UAT.fecha_suspension_cancelacion))="" THEN 1 ELSE 0 END) AS DIFF_fecha_suspension_cancelacion
,SUM(CASE WHEN TRIM(UPPER(PROD.flag_suspension_cancelacion)) IS NULL AND TRIM(UPPER(UAT.flag_suspension_cancelacion))="" THEN 1 ELSE 0 END) AS DIFF_flag_suspension_cancelacion
,SUM(CASE WHEN TRIM(UPPER(PROD.nombre_archivo_trama)) IS NULL AND TRIM(UPPER(UAT.nombre_archivo_trama))="" THEN 1 ELSE 0 END) AS DIFF_nombre_archivo_trama
,SUM(CASE WHEN TRIM(UPPER(PROD.numero_plan)) IS NULL AND TRIM(UPPER(UAT.numero_plan))="" THEN 1 ELSE 0 END) AS DIFF_numero_plan
,SUM(CASE WHEN TRIM(UPPER(PROD.nombre_asegurado)) IS NULL AND TRIM(UPPER(UAT.nombre_asegurado))="" THEN 1 ELSE 0 END) AS DIFF_nombre_asegurado
,SUM(CASE WHEN TRIM(UPPER(PROD.nombre_beneficiario)) IS NULL AND TRIM(UPPER(UAT.nombre_beneficiario))="" THEN 1 ELSE 0 END) AS DIFF_nombre_beneficiario
,SUM(CASE WHEN TRIM(UPPER(PROD.prima_trama)) IS NULL AND TRIM(UPPER(UAT.prima_trama))="" THEN 1 ELSE 0 END) AS DIFF_prima_trama
,SUM(CASE WHEN TRIM(UPPER(PROD.fecha_carga_sistema_prepo)) IS NULL AND TRIM(UPPER(UAT.fecha_carga_sistema_prepo))="" THEN 1 ELSE 0 END) AS DIFF_fecha_carga_sistema_prepo
,SUM(CASE WHEN TRIM(UPPER(PROD.numero_cotizacion)) IS NULL AND TRIM(UPPER(UAT.numero_cotizacion))="" THEN 1 ELSE 0 END) AS DIFF_numero_cotizacion
,SUM(CASE WHEN TRIM(UPPER(PROD.numero_propuesta)) IS NULL AND TRIM(UPPER(UAT.numero_propuesta))="" THEN 1 ELSE 0 END) AS DIFF_numero_propuesta
,SUM(CASE WHEN TRIM(UPPER(PROD.numero_solicitud)) IS NULL AND TRIM(UPPER(UAT.numero_solicitud))="" THEN 1 ELSE 0 END) AS DIFF_numero_solicitud
,SUM(CASE WHEN TRIM(UPPER(PROD.correo)) IS NULL AND TRIM(UPPER(UAT.correo))="" THEN 1 ELSE 0 END) AS DIFF_correo
,SUM(CASE WHEN TRIM(UPPER(PROD.usuario_cot)) IS NULL AND TRIM(UPPER(UAT.usuario_cot))="" THEN 1 ELSE 0 END) AS DIFF_usuario_cot
,SUM(CASE WHEN TRIM(UPPER(PROD.id_canal)) IS NULL AND TRIM(UPPER(UAT.id_canal))="" THEN 1 ELSE 0 END) AS DIFF_id_canal