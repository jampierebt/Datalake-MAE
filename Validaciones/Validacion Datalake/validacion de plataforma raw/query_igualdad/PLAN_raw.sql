SELECT SUM(CASE WHEN PROD.planid!=UAT.planid THEN 1 ELSE 0 END) AS DIFF_planid
,SUM(CASE WHEN TRIM(UPPER(PROD.productid))!=TRIM(UPPER(UAT.productid)) THEN 1 ELSE 0 END) AS DIFF_productid
,SUM(CASE WHEN PROD.plantype!=UAT.plantype THEN 1 ELSE 0 END) AS DIFF_plantype
,SUM(CASE WHEN TRIM(UPPER(PROD.description))!=TRIM(UPPER(UAT.description)) THEN 1 ELSE 0 END) AS DIFF_description
,SUM(CASE WHEN PROD.pla_publisheddate!=UAT.pla_publisheddate THEN 1 ELSE 0 END) AS DIFF_pla_publisheddate
,SUM(CASE WHEN PROD.pla_closeddate!=UAT.pla_closeddate THEN 1 ELSE 0 END) AS DIFF_pla_closeddate
,SUM(CASE WHEN PROD.pla_versionid!=UAT.pla_versionid THEN 1 ELSE 0 END) AS DIFF_pla_versionid
,SUM(CASE WHEN PROD.pla_dcoid!=UAT.pla_dcoid THEN 1 ELSE 0 END) AS DIFF_pla_dcoid
,SUM(CASE WHEN PROD.pla_parentid!=UAT.pla_parentid THEN 1 ELSE 0 END) AS DIFF_pla_parentid
,SUM(CASE WHEN PROD.pla_hierarchystate!=UAT.pla_hierarchystate THEN 1 ELSE 0 END) AS DIFF_pla_hierarchystate
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.PLAN_raw UAT 
INNER JOIN interseguro-data.acsele_data.PLAN_raw PROD 
ON UAT.PLANID = PROD.PLANID