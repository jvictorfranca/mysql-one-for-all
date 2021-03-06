CREATE VIEW faturamento_atual AS 
SELECT CONVERT(CAST(MIN(account_price) AS DECIMAL(10,2)), CHAR(10)) AS "faturamento_minimo", CONVERT(MAX(account_price),CHAR(10)) AS "faturamento_maximo", CONVERT(CAST(AVG(account_price) AS DECIMAL(10,2)),CHAR(10)) AS  "faturamento_medio", CONVERT(CAST(SUM(account_price) AS DECIMAL(10,2)), CHAR(10)) AS "faturamento_total"
FROM user_profile as t1
INNER JOIN user_plans as t2
ON t1.plan_id = t2.plan_id;
