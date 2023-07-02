SELECT 
	CAST(MIN(plans_info.valor_plano) AS DECIMAL(4,2)) AS faturamento_minimo,
    CAST(MAX(plans_info.valor_plano) as DECIMAL(4,2)) AS faturamento_maximo,
    CAST(AVG(plans_info.valor_plano) AS DECIMAL(4,2)) AS faturamento_medio,
    CAST(SUM(plans_info.valor_plano) AS DECIMAL(4,2)) AS faturamento_total
FROM 
	plans_info INNER JOIN users_info
ON 
    plans_info.plano_id = users_info.plan_id;