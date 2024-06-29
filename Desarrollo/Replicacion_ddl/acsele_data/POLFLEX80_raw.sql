CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.POLFLEX80_raw`
(
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC,
  NIVELAGRUPREASEGINPUT STRING,
  NIVELAGRUPREASEGVALUE STRING,
  SUMAASEGURADAINPUT STRING,
  SUMAASEGURADAVALUE STRING,
  TIPODOCUMENTOINPUT STRING,
  TIPODOCUMENTOVALUE STRING,
  NUMERODOCUMENTOINPUT STRING,
  NUMERODOCUMENTOVALUE STRING,
  PRODUCTOSVIDAINPUT STRING,
  PRODUCTOSVIDAVALUE STRING,
  PLANVIDAINPUT STRING,
  PLANVIDAVALUE STRING,
  TIPODESCUENTOINPUT STRING,
  TIPODESCUENTOVALUE STRING,
  TCEAINPUT STRING,
  TCEAVALUE STRING,
  FECHACOTIZACIONINPUT STRING,
  FECHACOTIZACIONVALUE STRING,
  COMUNICACIONPOLIZAINPUT STRING,
  COMUNICACIONPOLIZAVALUE STRING,
  POLIZAELECTRONICAINPUT STRING,
  POLIZAELECTRONICAVALUE STRING,
  COMUNICACIONENDOSOINPUT STRING,
  COMUNICACIONENDOSOVALUE STRING,
  NOMAGENTEINICIALINPUT STRING,
  NOMAGENTEINICIALVALUE STRING,
  NOMAGENTEFINALINPUT STRING,
  NOMAGENTEFINALVALUE STRING,
  AGENCIAINICIALINPUT STRING,
  AGENCIAINICIALVALUE STRING,
  AGENCIAFINALINPUT STRING,
  AGENCIAFINALVALUE STRING,
  EMAILENVIOENDOSOINPUT STRING,
  EMAILENVIOENDOSOVALUE STRING,
  NUMPROPORIGINALINPUT STRING,
  NUMPROPORIGINALVALUE STRING,
  POLIZAELECTRONICAENINPUT STRING,
  POLIZAELECTRONICAENVALUE STRING,
  INDCAMBIOPROPINPUT STRING,
  INDCAMBIOPROPVALUE STRING,
  CORREOAGENTEINICIALINPUT STRING,
  CORREOAGENTEINICIALVALUE STRING,
  CORREOAGENTEFINALINPUT STRING,
  CORREOAGENTEFINALVALUE STRING,
  NOMAGENTEDEFINITIVOINPUT STRING,
  NOMAGENTEDEFINITIVOVALUE STRING,
  CORREOAGENTEDEFINITIVOINPUT STRING,
  CORREOAGENTEDEFINITIVOVALUE STRING,
  PRIMAVIDAINPUT STRING,
  PRIMAVIDAVALUE STRING,
  CODAGENTEINICIALINPUT STRING,
  CODAGENTEINICIALVALUE STRING,
  CODAGENTEFINALINPUT STRING,
  CODAGENTEFINALVALUE STRING,
  FRECUENCIAPAGOANTINPUT STRING,
  FRECUENCIAPAGOANTVALUE STRING,
  PLANVIDAANTINPUT STRING,
  PLANVIDAANTVALUE STRING,
  INDDPSINPUT STRING,
  INDDPSVALUE STRING,
  FECHAPROXIMAGENREASEGINPUT STRING,
  FECHAPROXIMAGENREASEGVALUE STRING,
  OBSENDINTINPUT STRING,
  OBSENDINTVALUE STRING,
  NOMBRECONTRATANTEINPUT STRING,
  NOMBRECONTRATANTEVALUE STRING,
  MODOPAGOCONTRATANTEINPUT STRING,
  MODOPAGOCONTRATANTEVALUE STRING,
  DIRECCIONCONTRATANTEINPUT STRING,
  DIRECCIONCONTRATANTEVALUE STRING,
  CORREOICONTRATANTEINPUT STRING,
  CORREOICONTRATANTEVALUE STRING,
  CORREOIICONTRATANTEINPUT STRING,
  CORREOIICONTRATANTEVALUE STRING,
  CORREOIIICONTRATANTEINPUT STRING,
  CORREOIIICONTRATANTEVALUE STRING,
  TELEFONOICONTRATANTEINPUT STRING,
  TELEFONOICONTRATANTEVALUE STRING,
  TELEFONOIICONTRATANTEINPUT STRING,
  TELEFONOIICONTRATANTEVALUE STRING,
  TELEFONOIIICONTRATANTEINPUT STRING,
  TELEFONOIIICONTRATANTEVALUE STRING,
  COMUNICACIONGENCONTINPUT STRING,
  COMUNICACIONGENCONTVALUE STRING,
  FECHAFIRMAPROPINPUT STRING,
  FECHAFIRMAPROPVALUE STRING,
  FECHAPROPINPUT STRING,
  FECHAPROPVALUE STRING,
  CANALVENTAVIDAINPUT STRING,
  CANALVENTAVIDAVALUE STRING,
  FECHAPROXGENREASEGAUXINPUT STRING,
  FECHAPROXGENREASEGAUXVALUE STRING,
  INDEXCLUSIONESVIDAINPUT STRING,
  INDEXCLUSIONESVIDAVALUE STRING,
  MONEDAANTINPUT STRING,
  MONEDAANTVALUE STRING,
  RECARGOACEPTADOINPUT STRING,
  RECARGOACEPTADOVALUE STRING,
  TIPOPERSONAINPUT STRING,
  TIPOPERSONAVALUE STRING,
  FECHAPROXGENPRIMAVIDAINPUT STRING,
  FECHAPROXGENPRIMAVIDAVALUE STRING,
  POLIZACESIONADAVEINPUT STRING,
  POLIZACESIONADAVEVALUE STRING,
  IGNORARVALIDACIONSAINPUT STRING,
  IGNORARVALIDACIONSAVALUE STRING,
  NUMEROPOLIZAFLEXINPUT STRING,
  NUMEROPOLIZAFLEXVALUE STRING,
  PERIODOPAGOMINIMOINPUT STRING,
  PERIODOPAGOMINIMOVALUE STRING,
  INDPRESTAMOINPUT STRING,
  INDPRESTAMOVALUE STRING,
  FLGREGELIMINADO STRING,
  FECREGELIMINADO TIMESTAMP,
  FECREGINGRESO TIMESTAMP,
  FECACTUALIZACIONTABLA TIMESTAMP
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/POLFLEX80_raw/*.parquet"]);