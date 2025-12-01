BEGIN TRANSACTION

SELECT 
    p.id_pedido,
    a.nome AS artesã,
    c.nome AS cliente,
    pr.tipo AS produto,
    o.valor_orc AS orçamento
FROM pedido p
JOIN artesa a ON p.id_artesa = a.id_artesa
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN produto pr ON p.id_produto = pr.id_produto
JOIN orcamento o ON p.id_orcamento = o.id_orcamento

SELECT 
    a.nome AS artesa,
    o.prazo
    FROM orcamento o
    JOIN artesa a ON a.nome = 'Ro Furuno'