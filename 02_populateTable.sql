BEGIN TRANSACTION
 
INSERT INTO artesa(nome, telefone, especialidade)
VALUES
('Renatinha Arteira','11 947458-6542', 'calcados'),
('Ro Furuno','11 94222-6500', 'mesa'),
('Ana Luiza de Oliveira','12 94545-4545','vesturario'),
('Julia Eleoterio','45 96545-2121','maternidade'),
('Neddy Gusman','11 95858-0045','moda praia')

select * from artesa;

insert into cliente(id_cliente, nome, telefone, CPF, id_artesa)
VALUES
(35,'Maria Silva','23 96568-5865','123.456.456-77', 1)

insert into cliente(id_cliente, nome, telefone, CPF, id_artesa)
VALUES
(34,'Marluce da Silva','11 97877-7785','456.654.656-55', 2),
(32,'Marina Santos','11 96541-1414','222.666.555-44',3),
(31,'Gregorio Santana','81 97566-6652','003.226.331-99',4),
(30,'Emanuel Santinho','81 95566-3333','550.210.024-13', 5),
(29,'Sara Silva','21 96568-5000','123.456.111-77', 1),
(28,'Raiane da Silva','15 91111-7122','456.654.656-11', 2),
(27,'Karina Santos','16 96541-1514','222.666.555-45',3),
(26,'Antonella de Sa','87 97566-1152','003.226.331-09',4),
(25,'Manu Sena','83 95566-1233','550.000.024-13', 5)

select *from cliente;

INSERT INTO orcamento(valor_orc, prazo, data)
VALUES
(320.66,'2025-11-02','2025-10-29'),
(600.01,'2025-12-02','2025-11-29'),
(450.25,'2026-01-02','2025-11-29'),
(500.02,'2026-02-02','2025-11-29'),
(120.00,'2026-03-02','2025-11-29')

select * from orcamento;

INSERT INTO produto (peso, tipo, horas, valor_fim)
VALUES
(2.03, 'santinha',15,350.59),
(0.100, 'caminho de mesa',10, 120.00),
(0.500, 'calca',20, 500.00),
(3.0, 'kit banheiro',35,455.19),
(1.2,'saida de maternidade',30,570.29)

select * from produto;

INSERT INTO pedido (id_artesa, id_cliente, id_orcamento, id_produto)
VALUES
(1, 35, 1, 1),  
(2, 34, 2, 2),
(3, 32, 3, 3),
(4, 31, 4, 4),
(5, 30, 5, 5)

select * from pedido;
