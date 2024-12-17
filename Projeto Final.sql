
--Criando a base de dados

CREATE DATABASE SUCOS_VENDAS_1;

-- Criando tabela
USE SUCOS_VENDAS;

CREATE TABLE [TABELA DE CLIENTES]
(
[CPF] [CHAR] (11),
[NOME] [VARCHAR] (100),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME DE COMPRA] [FLOAT],
[PRIMEIRA COMPRA] [BIT]
);



CREATE TABLE [TABELA DE VENDEDORES](
    [MATRICULA] [varchar](20) NOT NULL,
    [NOME] [varchar](100) NULL,
    [CIDADE] [varchar](100) NULL,
    [PERCENTUAL COMISSÃO] [varchar](20) NOT NULL,
    [DATA INICIO] [date] NOT NULL,
    [TEM DEPENDENTE] [BIT]);


CREATE TABLE [TABELA DE PRODUTOS]
(
[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);


-- item 3


CREATE TABLE [TABELA DE PRODUTOS2](
	[CODIGO DO PRODUTO] [VARCHAR] (20),
	[NOME DO PRODUTO] [VARCHAR] (150),
	[EMBALAGEM] [VARCHAR] (50),
	[TAMANHO] [VARCHAR] (50),
	[SABOR] [VARCHAR] (50),
	[PRECO DE LISTA] [SMALLMONEY]
);

-- Apagar tabela

DROP TABLE [TABELA DE PRODUTOS2](
	[CODIGO DO PRODUTO] [VARCHAR] (20),
	[NOME DO PRODUTO] [VARCHAR] (150),
	[EMBALAGEM] [VARCHAR] (50),
	[TAMANHO] [VARCHAR] (50),
	[SABOR] [VARCHAR] (50),
	[PRECO DE LISTA] [SMALLMONEY]
);

-- Adicionando chaves


ALTER TABLE [TABELA DE PRODUTOS] ALTER COLUMN [CODIGO DO PRODUTO] VARCHAR(20) NOT NULL;
ALTER TABLE [TABELA DE PRODUTOS] ADD CONSTRAINT PK_TABELA_DE_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO]);

ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] VARCHAR(5) NOT NULL;
ALTER TABLE [TABELA DE VENDEDORES] ADD CONSTRAINT PK_TABELA_DE_VENDEDORES 
PRIMARY KEY CLUSTERED ([MATRICULA]);

ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] CHAR(11) NOT NULL; 
ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_DE_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])




-- Inserindo valores
-- Uma linha
INSERT INTO [TABELA DE PRODUTOS]
VALUES
(
'1040107',
'Light - 350 ml - Melância',
'Lata',
'350 ml',
'Melância',
4.56
);

INSERT INTO [TABELA DE VENDEDORES]
([NOME], 
[MATRICULA],
[CIDADE],
[PERCENTUAL COMISSÃO],
[DATA INICIO],
[TEM DEPENDENTE])
VALUES
('Alberto de Sá Verneck','00239','São Paulo', 0.08,'2020-06-05',1);
-- Em ordem diferente
INSERT INTO [TABELA DE VENDEDORES]
( [NOME], [PERCENTUAL COMISSÃO], [MATRICULA])
VALUES
('Márcio Almeida Silva',0.08, '00235');



-- Várias linhas

INSERT INTO [TABELA DE PRODUTOS]
VALUES
 ('1004327','Videira do Campo - 1,5 Litros - Melância','PET','1,5 Litros','Melância',19.51),
 ('1088126','Linha Citros - 1 Litro - Limão','PET','1 Litro','Limão',7),
 ('544931','Frescor do Verão - 350 ml - Limão','Lata','350 ml','Limão',2.46);


INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISSÃO])
VALUES
('00236','Cláudia Morais',0.08),
('00237','Marcela Ferreira',0.09);

--Inserindo outros tipos de valores
INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393431', 'João da Silva', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'RJ', '20000000', '1965-03-21', 57, 'M', 20000, 30000.30, 1);

INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393555', 'Maria Clara', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'RJ', '20000000', '1975-03-21', 47, 'F', 20000, 30000.30, 'TRUE'),

INSERT INTO [TABELA DE CLIENTES] 
VALUES 
    ('00384393666', 'Márcia Pereira', 'Rua Projetada A1', 'Numero 233', 'Copacabana', 'RJ', '20000000', '1975-03-21', 47, 'F', 20000, 30000.30, 0);
;

-- Inserindo outros dados
--Clientes
INSERT INTO [TABELA DE CLIENTES]
VALUES
('1471156710','Erica Carvalho','R. Iriquitia',' ','Jardins','SP','80012212','1990-09-01',32,'F',1700000000,24500,0),
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro',' ','Agua Santa','RJ','22000000','2000-02-12',23,'M',1000000000,20000,1),
('2600586709','Cesar Teixeira','Rua Conde de Bonfim',' ','Tijuca','RJ','22020001','2000-03-12',23,'M',1200000000,22000,0),
('3623344710','Marcos Nogueira','Av. Pastor Martin Luther King Junior',' ','Inhauma','RJ','22002012','1995-01-13',28,'M',1100000000,22000,1),
('492472718','Eduardo Jorge','R. Volta Grande',' ','Tijuca','RJ','22012002','1994-07-19',28,'M',750000000,9500,1),
('50534475787','Abel Silva','Rua Humaita',' ','Humaita','RJ','22000212','1995-09-11',27,'M',1700000000,26000,0),
('5576228758','Petra Oliveira','R. Benicio de Abreu',' ','Lapa','SP','88192029','1995-11-14',27,'F',700000000,16000,1),
('5648641702','Paulo Cesar Mattos','Rua Helio Beltrao',' ','Tijuca','RJ','21002020','1991-08-30',31,'M',1200000000,22000,0),
('5840119709','Gabriel Araujo','R. Manuel de Oliveira',' ','Santo Amaro','SP','80010221','1985-03-16',37,'M',1400000000,21000,1),
('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes',' ','Bras','SP','88202912','1992-03-25',30,'M',1200000000,20000,1),
('8502682733','Valdeci da Silva','R. Srg. Edison de Oliveira',' ','Jardins','SP','82122020','1995-10-07',27,'M',1100000000,19000,0),
('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura',' ','Jardins','SP','81192002','1983-12-20',39,'M',2000000000,24000,0),
('9283760794','Edson Meilelles','R. Pinto de Azevedo',' ','Cidade Nova','RJ','22002002','1995-10-07',27,'M',1500000000,25000,1),
('94387575700','Walber Lontra','R. Cel. Almeida',' ','Piedade','RJ','22000201','1989-06-20',33,'M',600000000,12000,1),
('95939180787','Fabio Carvalho','R. dos Jacarandas da Peninsula',' ','Barra da Tijuca','RJ','22002020','1992-01-05',31,'M',900000000,18000,1);



--Produtos
INSERT INTO [TABELA DE PRODUTOS]
VALUES
('1042712','Linha Citros - 700 ml - Limão','Garrafa','Limão','700 ml',4.90),
('788975','Pedaços de Frutas - 1,5 Litros - Maça','PET','Maça','1,5 Litros',18.01),
('1002767','Videira do Campo - 700 ml - Cereja/Maça','Garrafa','Cereja/Maça','700 ml',8.41),
('231776','Festival de Sabores - 700 ml - Açai','Garrafa','Açai','700 ml',13.31),
('479745','Clean - 470 ml - Laranja','Garrafa','Laranja','470 ml',3.76),
('1051518','Frescor do Verão - 470 ml - Limão','Garrafa','Limão','470 ml',3.29),
('1101035','Linha Refrescante - 1 Litro - Morango/Limão','PET','Morango/Limão','1 Litro',9.01),
('229900','Pedaços de Frutas - 350 ml - Maça','Lata','Maça','350 ml',4.21),
('1086543','Linha Refrescante - 1 Litro - Manga','PET','Manga','1 Litro',11.01),
('695594','Festival de Sabores - 1,5 Litros - Açai','PET','Açai','1,5 Litros',28.51),
('838819','Clean - 1,5 Litros - Laranja','PET','Laranja','1,5 Litros',12.01),
('326779','Linha Refrescante - 1,5 Litros - Manga','PET','Manga','1,5 Litros',16.51),
('520380','Pedaços de Frutas - 1 Litro - Maça','PET','Maça','1 Litro',12.01),
('1041119','Linha Citros - 700 ml - Lima/Limão','Garrafa','Lima/Limão','700 ml',4.90),
('243083','Festival de Sabores - 1,5 Litros - Maracujá','PET','Maracujá','1,5 Litros',10.51),
('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','Cereja','700 ml',8.40),
('746596','Light - 1,5 Litros - Melancia','PET','Melancia','1,5 Litros',19.50),
('773912','Clean - 1 Litro - Laranja','PET','Laranja','1 Litro',8.01),
('826490','Linha Refrescante - 700 ml - Morango/Limão','Garrafa','Morango/Limão','700 ml',6.31),
('723457','Festival de Sabores - 700 ml - Maracujá','Garrafa','Maracujá','700 ml',4.91),
('812829','Clean - 350 ml - Laranja','Lata','Laranja','350 ml',2.80),
('290478','Videira do Campo - 350 ml - Melancia','Lata','Melancia','350 ml',4.56),
('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','Morango','700 ml',7.70),
('235653','Frescor do Verão - 350 ml - Manga','Lata','Manga','350 ml',3.85),
('1002334','Linha Citros - 1 Litro - Lima/Limão','PET','Lima/Limão','1 Litro',7.00),
('1013793','Videira do Campo - 2 Litros - Cereja/Maça','PET','Cereja/Maça','2 Litros',24.01),
('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','Manga','700 ml',7.71),
('1022450','Festival de Sabores - 2 Litros - Açai','PET','Açai','2 Litros',38.01);


-- Consultando dados

--todas as colunas
SELECT * FROM [TABELA DE PRODUTOS]
SELECT * FROM [TABELA DE VENDEDORES]
SELECT * FROM [TABELA DE CLIENTES] 


-- colunas específicas
SELECT [CPF], [NOME] FROM [TABELA DE CLIENTES];

-- colunas em ordem diferente
SELECT [NOME], [CPF] FROM [TABELA DE CLIENTES];

-- apelidando colunas
SELECT [NOME] AS [NOME DO CLIENTE], [CPF] AS [IDENTIFICADOR]
FROM [TABELA DE CLIENTES] 


-- selecionando linhas especificas (filtrando registros)
SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Uva'



-- selecionando linhas especificas (outros operadores)
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 7.004;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] <> 7.004;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] >= 7.004;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] >= 'Lata' ;

-- selecionando data especificas
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] < '1995-09-11';
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995;
SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO], YEAR ([DATA DE NASCIMENTO]) AS ANO FROM [TABELA DE CLIENTES];

SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO]
, YEAR ([DATA DE NASCIMENTO]) AS ANO
, MONTH ([DATA DE NASCIMENTO]) AS MES
, DAY ([DATA DE NASCIMENTO]) AS DIA
FROM [TABELA DE CLIENTES];



-- Filtros compostos
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO])=12 AND [BAIRRO] = 'Tijuca';
SELECT * FROM [TABELA DE CLIENTES] WHERE [BAIRRO] = 'Jardins' OR [BAIRRO] = 'Tijuca';



-- Alterar valores

-- um valor
SELECT * FROM [TABELA DE PRODUTOS];

UPDATE [TABELA DE PRODUTOS]
SET [PRECO DE LISTA] = 3
WHERE [CODIGO DO PRODUTO] = '544931';

-- dois valores 
UPDATE [TABELA DE PRODUTOS]
SET [PRECO DE LISTA] = 7.50, [EMBALAGEM] = 'Garrafa'
WHERE [CODIGO DO PRODUTO] = '1088126';

-- Aumentando o preço da lata em 10%
UPDATE [TABELA DE PRODUTOS] 
SET [PRECO DE LISTA] = [PRECO DE LISTA] * 1.1 
WHERE [EMBALAGEM] = 'Lata';
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] = 'Lata';

-- atividades
UPDATE [TABELA DE VENDEDORES] SET [PERCENTUAL COMISSÃO] = 0.11
WHERE [MATRICULA] = '00235';

UPDATE [TABELA DE VENDEDORES] SET [NOME] = 'Cláudia Morais Sousa'
WHERE [MATRICULA] = '00236'


-- Excluindo valores
DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1004327';





 -- item 4
SELECT * FROM [TABELA DE VENDEDORES];









