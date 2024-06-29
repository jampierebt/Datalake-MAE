CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.EXT_FLEX_RPT_COBERTURA_raw`
(
  FECHA_INI TIMESTAMP,
  FECHA_FIN TIMESTAMP,
  NUMEROPOLIZA STRING,
  IDOPERACION NUMERIC,
  COBERTURA STRING,
  CAPITAL STRING,
  ORDEN STRING
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/EXT_FLEX_RPT_COBERTURA_raw/*.parquet"]);