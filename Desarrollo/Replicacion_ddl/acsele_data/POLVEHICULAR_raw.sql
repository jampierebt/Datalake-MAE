CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.POLVEHICULAR_raw`
(
  AUDITDATE TIMESTAMP,
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC,
  INDRENOVACIONINPUT STRING,
  INDRENOVACIONVALUE STRING,
  EMAILINPUT STRING,
  EMAILVALUE STRING,
  TELEFONOCELULARINPUT STRING,
  TELEFONOCELULARVALUE STRING,
  CODDEPARTAMENTOINPUT STRING,
  CODDEPARTAMENTOVALUE STRING,
  CODPROVINCIAINPUT STRING,
  CODPROVINCIAVALUE STRING,
  CODDISTRITOINPUT STRING,
  CODDISTRITOVALUE STRING,
  FECHAVENTAINPUT STRING,
  FECHAVENTAVALUE STRING,
  TIPOPAGOINPUT STRING,
  TIPOPAGOVALUE STRING,
  FRECUENCIAPAGOANTINPUT STRING,
  FRECUENCIAPAGOANTVALUE STRING,
  VEHCEROKMINPUT STRING,
  VEHCEROKMVALUE STRING,
  REQUIEREGPSINPUT STRING,
  REQUIEREGPSVALUE STRING,
  PLANVEHICULARINPUT STRING,
  PLANVEHICULARVALUE STRING,
  DIRECCIONINPUT STRING,
  DIRECCIONVALUE STRING,
  FECHAANULACIONINPUT STRING,
  FECHAANULACIONVALUE STRING,
  FECHASUSPENSIONINPUT STRING,
  FECHASUSPENSIONVALUE STRING,
  FECHALIBERACIONINPUT STRING,
  FECHALIBERACIONVALUE STRING,
  FECHAACUSERECIBOINPUT STRING,
  FECHAACUSERECIBOVALUE STRING,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/POLVEHICULAR_raw/*.parquet"]);