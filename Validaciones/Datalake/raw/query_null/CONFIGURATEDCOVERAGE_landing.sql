SELECT SUM(CASE WHEN TRIM(UPPER(PROD.description)) IS NULL AND TRIM(UPPER(UAT.description))="" THEN 1 ELSE 0 END) AS DIFF_description
,SUM(CASE WHEN TRIM(UPPER(PROD.mandatory)) IS NULL AND TRIM(UPPER(UAT.mandatory))="" THEN 1 ELSE 0 END) AS DIFF_mandatory