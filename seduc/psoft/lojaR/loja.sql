DATABASE loja;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_entrega DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

CREATE TABLE moda (
    id_moda INT PRIMARY KEY AUTO_INCREMENT,
    moda_masculina VARCHAR(30) NOT NULL,
    moda_feminina VARCHAR(30) NOT NULL
);

CREATE TABLE instrumento (
    id_instrumento INT PRIMARY KEY AUTO_INCREMENT,
    personalizacao VARCHAR(40) NOT NULL,
    inst_personalizado VARCHAR(30) NOT NULL
);

CREATE TABLE roupa (
    id_roupa INT PRIMARY KEY AUTO_INCREMENT,
    nome_roupa VARCHAR(30) NOT NULL,
    tamanho INT NOT NULL
);

CREATE TABLE kit (
    id_kit INT PRIMARY KEY AUTO_INCREMENT,
    kit_customizacao VARCHAR(40) NOT NULL
);

CREATE TABLE logistica (
    id_logistica INT PRIMARY KEY AUTO_INCREMENT,
    forma_logistica VARCHAR(30) NOT NULL
);
USE loja;

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (1, "Fulano da Silva", "123.456.789-00", "fulano@gmail.com", "123456789", "Rua A, 123");

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (2, "Ciclano da Silva", "987.654.321-00", "ciclano@gmail.com", "987654321", "Rua B, 456");

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (3, "Deltrano da Silva", "789.123.456-00", "deltrano@gmail.com", "789123456", "Rua C, 567");

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (1, "Guitarra", "Cordas", 1500.00, 10);

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (2, "Bateria", "Percussão", 3000.00, 5);

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (3, "Teclado", "Teclado", 2000.00, 8);

INSERT INTO moda (id_moda, moda_masculina, moda_feminina)
VALUES (1, "Rock-2000", "Rock-2000");

INSERT INTO moda (id_moda, moda_masculina, moda_feminina)
VALUES (2, "Rock-1960", "Rock-1960");

INSERT INTO moda (id_moda, moda_masculina, moda_feminina)
VALUES (3, "Rock-2005", "Rock-2005");

INSERT INTO instrumento (id_instrumento, personalizacao, inst_personalizado)
VALUES (1, "Guitarra com formato de estrela", "guitarra preta ");

INSERT INTO instrumento (id_instrumento, personalizacao)
VALUES (2, "Bateria com gengar de estampa e com paletas com detalhes roxos");

INSERT INTO instrumento (id_instrumento, personalizacao)
VALUES (3, "Baixo com detalhes amarelos com preto e asas de anjo");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (1, "moletom RockLifeStyle");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (2, "camisa RockLifeStyle");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (3, "calca RockLifeStyle");

INSERT INTO kit (id_kit, kit_customizacao)
VALUES (1, "");

INSERT INTO kit (id_kit)
VALUES (2, );

INSERT INTO kit (id_kit)
VALUES (3, );

INSERT INTO logistica (id_logistica)
VALUES (1, );

INSERT INTO logistica (id_logistica)
VALUES (2, );

INSERT INTO logistica (id_logistica)
VALUES (3, );


