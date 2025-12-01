create table artesa (
id_artesa INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT(100) NOT NULL,
telefone TEXT(17),
especialidade TEXT(100)
)

create table cliente (
id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT(100),
telefone TEXT(17) NOT NULL,
CPF TEXT(15) NOT NULL,
id_artesa INTEGER,
FOREIGN KEY (id_artesa) REFERENCES artesa (id_artesa)
)

create table orcamento (
id_orcamento INTEGER PRIMARY KEY AUTOINCREMENT,
valor_orc NUMERIC,
prazo TEXT NOT NULL,
data TEXT,
id_artesa INTEGER,
id_cliente INTEGER,
FOREIGN KEY (id_artesa) REFERENCES artesa (id_artesa),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
)

create table produto (
id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
peso NUMERIC,
tipo TEXT(40),
horas INTEGER,
valor_fim NUMERIC,
id_artesa INTEGER,
id_cliente INTEGER,
id_orcamento INTEGER,
FOREIGN KEY (id_artesa) REFERENCES artesa (id_artesa),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_orcamento) REFERENCES orcamento (id_orcamento)
)

create table pedido (
id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
id_artesa INTEGER,
id_cliente INTEGER,
id_orcamento INTEGER,
id_produto INTEGER,
FOREIGN KEY (id_artesa) REFERENCES artesa (id_artesa),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_orcamento) REFERENCES orcamento (id_orcamento),
FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
)
