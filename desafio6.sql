Select 
MIN(valor_do_plano) AS 'faturamento_minimo', 
MAX(valor_do_plano) AS 'faturamento_maximo',
ROUND(AVG(valor_do_plano), 2) AS 'faturamento_medio',
SUM(valor_do_plano) AS 'faturamento_total'
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuarios u ON p.id_plano = u.id_plano;