CREATE OR REPLACE TABLE interseguro-data.temp.MIGRACION_TABLES
AS
----------------------------------------------------------------
-- Raw Data
----------------------------------------------------------------
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.raw_vesta_exp_serv','iter-data-storage-pv-uat.raw_vesta_exp_serv') AS DDL
FROM iter-data-storage-pv.raw_vesta_exp_serv.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.rviadmin_data','iter-data-storage-pv-uat.rviadmin_data') AS DDL
FROM interseguro-data.rviadmin_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.admwr_data','iter-data-storage-pv-uat.admwr_data') AS DDL
FROM interseguro-data.admwr_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.traveldb_data','iter-data-storage-pv-uat.traveldb_data') AS DDL
FROM interseguro-data.traveldb_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.portaldb_data','iter-data-storage-pv-uat.portaldb_data') AS DDL
FROM interseguro-data.portaldb_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.vtiger_data','iter-data-storage-pv-uat.vtiger_data') AS DDL
FROM iter-data-storage-pv.vtiger_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.crm_data','iter-data-storage-pv-uat.crm_data') AS DDL
FROM interseguro-data.crm_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.vidacash_data','iter-data-storage-pv-uat.vidacash_data') AS DDL
FROM interseguro-data.vidacash_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM interseguro-data.config_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM iter-data-storage-pv.config_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.rumbo_data','iter-data-storage-pv-uat.rumbo_data') AS DDL
FROM interseguro-data.rumbo_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.ofiplan_data','iter-data-storage-pv-uat.ofiplan_data') AS DDL
FROM interseguro-data.ofiplan_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.salvadb_data','iter-data-storage-pv-uat.salvadb_data') AS DDL
FROM interseguro-data.salvadb_data.INFORMATION_SCHEMA.TABLES
----------------------------------------------------------------
-- Entries
----------------------------------------------------------------
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM interseguro-data.inputfiles.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM iter-data-storage-pv.inputfiles.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM iter-data-storage-pv.external_data.INFORMATION_SCHEMA.TABLES
----------------------------------------------------------------
-- Capa BI u Master
----------------------------------------------------------------
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.master_party','iter-data-storage-pv-uat.master_party') AS DDL
FROM iter-data-storage-pv.master_party.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,CONCAT('CREATE OR REPLACE TABLE iter-data-storage-pv-uat.',TABLE_SCHEMA,'.',TABLE_NAME
,' AS',' SELECT * FROM ',TABLE_CATALOG,'.',TABLE_SCHEMA,'.',TABLE_NAME) AS DDL
FROM iter-data-storage-pv.bi_finanzas.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.goldenrecord_data','iter-data-storage-pv-uat.goldenrecord_data') AS DDL
FROM interseguro-data.goldenrecord_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.master_product','iter-data-storage-pv-uat.master_product') AS DDL
FROM iter-data-storage-pv.master_product.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.master_transaction','iter-data-storage-pv-uat.master_transaction') AS DDL
FROM iter-data-storage-pv.master_transaction.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.bi_cobranza','iter-data-storage-pv-uat.bi_cobranza') AS DDL
FROM iter-data-storage-pv.bi_cobranza.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.salomon_data','iter-data-storage-pv-uat.salomon_data') AS DDL
FROM interseguro-data.salomon_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.affinity_data','iter-data-storage-pv-uat.affinity_data') AS DDL
FROM interseguro-data.affinity_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.soat_data','iter-data-storage-pv-uat.soat_data') AS DDL
FROM interseguro-data.soat_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'interseguro-data.exp_serv_data','iter-data-storage-pv-uat.exp_serv_data') AS DDL
FROM interseguro-data.exp_serv_data.INFORMATION_SCHEMA.TABLES
UNION ALL
SELECT 
TABLE_CATALOG AS NOMBRE_PROYECTO
,TABLE_SCHEMA AS NOMBRE_DATASET
,TABLE_NAME   AS NOMBRE_TABLA
,TABLE_TYPE   AS TIPO
,REPLACE(REPLACE(REPLACE(DDL,'CREATE TABLE','CREATE OR REPLACE TABLE'),'iter-data-storage-pv.views','iter-data-storage-pv-uat.views'),'iter-data-storage-pv','iter-data-storage-pv-uat') AS DDL
FROM iter-data-storage-pv.views.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='VIEW'
AND TABLE_NAME LIKE'%VW_OPM%'









