SELECT SUM(CASE WHEN TRIM(UPPER(PROD.static)) IS NULL AND TRIM(UPPER(UAT.static))="" THEN 1 ELSE 0 END) AS DIFF_static
,SUM(CASE WHEN TRIM(UPPER(PROD.tipoclienteinput)) IS NULL AND TRIM(UPPER(UAT.tipoclienteinput))="" THEN 1 ELSE 0 END) AS DIFF_tipoclienteinput
,SUM(CASE WHEN TRIM(UPPER(PROD.tipoclientevalue)) IS NULL AND TRIM(UPPER(UAT.tipoclientevalue))="" THEN 1 ELSE 0 END) AS DIFF_tipoclientevalue