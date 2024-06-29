CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.TD_OPERACION_VIDA_AGENTE_raw`
(
  NUMERO_POLIZA STRING,
  NUMERO_OPERACION NUMERIC,
  AUDITDATE_SYSTEM_DATE STRING,
  ID_PRODUCTO NUMERIC,
  NOMBRE_PRODUCTO STRING,
  STATUS_OPERATION STRING,
  NIVELAGRUPREASEGINPUT STRING,
  NUMERODOCUMENTOINPUT STRING,
  TIPODOCUMENTOINPUT STRING,
  SIMBOLOMONEDASININPUT STRING,
  POLIZAELECTRONICAINPUT STRING,
  SIMBOLOMONEDAPLSININPUT STRING,
  FRECUENCIAPAGOANTINPUT STRING,
  AGENCIAFINALINPUT STRING,
  AGENCIAINICIALINPUT STRING,
  CANALVENTAVIDAINPUT STRING,
  CODAGENTEFINALINPUT STRING,
  CODAGENTEINICIALINPUT STRING,
  COMUNICACIONENDOSOINPUT STRING,
  COMUNICACIONGENCONTINPUT STRING,
  COMUNICACIONPOLIZAINPUT STRING,
  CORREOAGENTEFINALINPUT STRING,
  CORREOAGENTEINICIALINPUT STRING,
  CORREOICONTRATANTEINPUT STRING,
  CORREOIICONTRATANTEINPUT STRING,
  CORREOIIICONTRATANTEINPUT STRING,
  DIRECCIONCONTRATANTEINPUT STRING,
  EMAILENVIOENDOSOINPUT STRING,
  FECHACOTIZACIONINPUT STRING,
  FECHAFIRMAPROPINPUT STRING,
  FECHAPROPINPUT STRING,
  INDCAMBIOPROPINPUT STRING,
  MODOPAGOCONTRATANTEINPUT STRING,
  MONEDAANTINPUT STRING,
  NOMAGENTEDEFINITIVOINPUT STRING,
  NOMAGENTEFINALINPUT STRING,
  NOMAGENTEINICIALINPUT STRING,
  NOMBRECONTRATANTEINPUT STRING,
  NUMPROPORIGINALINPUT STRING,
  PLANVIDAINPUT STRING,
  POLIZAELECTRONICAENINPUT STRING,
  PRIMAVIDAINPUT STRING,
  PRODUCTOSVIDAINPUT STRING,
  TELEFONOICONTRATANTEINPUT STRING,
  TELEFONOIICONTRATANTEINPUT STRING,
  TELEFONOIIICONTRATANTEINPUT STRING,
  CODINTERMEDIARIOINPUT STRING,
  FECHAPROXGENREASEGAUXINPUT STRING,
  FECHAPROXIMAGENREASEGINPUT STRING,
  INDEXCLUSIONESVIDAINPUT STRING,
  CORREOAGENTEDEFINITIVOINPUT STRING,
  FECHAPROXGENPRIMAVIDAINPUT STRING,
  PLANVIDAANTINPUT STRING,
  RECARGOACEPTADOINPUT STRING,
  TIPOPERSONAINPUT STRING,
  IGNORARVALIDACIONSAINPUT STRING,
  SUMAASEGURADAINPUT STRING,
  TIPODESCUENTOINPUT STRING,
  FECHAEFECTIVADIFERIMIENTOINPUT STRING,
  FECHAFINDIFERIMIENTOINPUT STRING,
  FECHAINIDIFERIMIENTOINPUT STRING,
  FRECUENCIAPAGOORIGENINPUT STRING,
  MESESDIFERIDOSTOTALINPUT STRING,
  PERIODOPAGODIFERIDOSINPUT STRING,
  RESPUESTAAPIENDOSODIFINPUT STRING,
  POLIZACESIONADAVEINPUT STRING,
  FECHASALDACIONDESDEINPUT STRING,
  FECHASALDACIONINPUT STRING,
  INDDPSINPUT STRING,
  TIPOPAGOINPUT STRING,
  FECHARECEPCIONGDCINPUT STRING,
  FLAGNVACOTIZACIONINPUT STRING,
  FLAGVALVIADEPAGOINPUT STRING,
  INDAFINPUT STRING,
  MONEDAPRIMAINPUT STRING,
  MONEDATRANSACCIONINPUT STRING,
  MONTOPRIMAINPUT STRING,
  MONTOTRANSACCIONINPUT STRING,
  NUMOPERACIONINPUT STRING,
  TASACOSTOEFECTIVOANUALINPUT STRING,
  CUOTAPRESTAMOSURAINPUT STRING,
  FECHAINIPRESTAMOSURAINPUT STRING,
  MONTOPRESTAMOSURAINPUT STRING,
  TCEASURAINPUT STRING,
  TIPOENDOSOPOLSOLINPUT STRING,
  FECHAPACTADAINPUT STRING,
  PRIMACOTINVINPUT STRING,
  FECHA_PROCESO DATETIME,
  OPERATION_DATETIME STRING,
  PLANCOMERCIALVIDAINPUT STRING,
  OPCIONVIDAINPUT STRING,
  INDPRESTAMOINPUT STRING,
  PLANVIDAVALUE STRING,
  PLANMASIVOSINPUT STRING
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/TD_OPERACION_VIDA_AGENTE_raw/*.parquet"]);