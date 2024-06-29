CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.STLI_FUNDMOVEMENTPOLICY_raw`
(
  FMP_ID NUMERIC,
  APO_ID NUMERIC,
  COR_ID NUMERIC,
  LFA_ID NUMERIC,
  LFT_ID NUMERIC,
  FMP_DESCPROPERTY STRING,
  FMP_CONCEPT STRING,
  FMP_AMOUNT STRING,
  FMP_DATEOPERATION TIMESTAMP,
  FMP_DATEUSERECIPENT TIMESTAMP,
  FMP_DUEDATE TIMESTAMP,
  FMP_STATUS NUMERIC,
  FMP_PARENTID NUMERIC,
  OPM_ID NUMERIC,
  FMP_SOURCE NUMERIC,
  AUDITDATE TIMESTAMP,
  FECHA_PROCESO TIMESTAMP
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/STLI_FUNDMOVEMENTPOLICY_raw/*.parquet"]);