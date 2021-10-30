CREATE VIEW faturamento_atual AS 
SELECT MIN(account_price) AS "faturamento_minimo", MAX(account_price) AS "faturamento_maximo", CAST(AVG(account_price) AS DECIMAL(10,2)) AS  "faturamento_medio", SUM(account_price) AS "faturamento_total"
FROM user_profile as t1
INNER JOIN user_plans as t2
ON t1.plan_id = t2.plan_id;
