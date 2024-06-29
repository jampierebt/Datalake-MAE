CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.POLCLONACIONOFRAUDED_landing`
(
  AUDITDATE TIMESTAMP,
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC,
  NOMBREASEGURADOINPUT STRING,
  NOMBREASEGURADOVALUE STRING,
  NROTARJETACTAINPUT STRING,
  NROTARJETACTAVALUE STRING,
  MONEDATARJETACTAINPUT STRING,
  MONEDATARJETACTAVALUE STRING,
  FECHANACIMIENTOASISTINPUT STRING,
  FECHANACIMIENTOASISTVALUE STRING,
  FECHAVENTAINPUT STRING,
  FECHAVENTAVALUE STRING,
  FECHAACTIVACIONTCINPUT STRING,
  FECHAACTIVACIONTCVALUE STRING,
  FECVENTARJETACTAINPUT STRING,
  FECVENTARJETACTAVALUE STRING,
  CODINTERMEDIARIOINPUT STRING,
  CODINTERMEDIARIOVALUE STRING,
  PROVEEDORDIGITINPUT STRING,
  PROVEEDORDIGITVALUE STRING,
  PLANCLONACIONOFRAUDEDINPUT STRING,
  PLANCLONACIONOFRAUDEDVALUE STRING,
  MTOSINIESTROCLONACIONINPUT STRING,
  MTOSINIESTROCLONACIONVALUE STRING,
  NIVELAGRUPREASEGINPUT STRING,
  NIVELAGRUPREASEGVALUE STRING,
  SIMBOLOMONEDASININPUT STRING,
  SIMBOLOMONEDASINVALUE STRING
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/POLCLONACIONOFRAUDED_landing/*.parquet"]);