# Exercicio 4

## Diagrama
	Clientes:
	- id_cliente (PK)
	- razao_social
	- id_estado(fk) ----> estados.id_estado

	Telefones:
		- id_telefone(PK)
		- numero
		- id_cliente(FK) ----> clientes.id_cliente
		- id_tipo_telefone(FK) ----> tipos_telefone.id_tipo_telefone
	
	Tipos telefone:
	- id_tipo_telefone(PK)
	- descricao

	Estados:
	- id_estado(PK)
	- uf
	- nome_estado

## Create

```
	CREATE TABLE estados (
		id_estado INT PRIMARY KEY,
		uf VARCHAR(2) NOT NULL,
		nome_estado VARCHAR(50) NOT NULL
	);

	CREATE TABLE tipos_telefone (
		id_tipo_telefone INT PRIMARY KEY,
		descricao VARCHAR(50) NOT NULL
	);

	CREATE TABLE telefones (
		id_telefone INT PRIMARY KEY,
		numero VARCHAR(20) NOT NULL,
		id_tipo_telefone INT NOT NULL,
		id_cliente INT NOT NULL,
		FOREIGN KEY (id_tipo_telefone) REFERENCES tipos_telefone(id_tipo_telefone),
		FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
		);

	CREATE TABLE clientes (
		id_cliente INT PRIMARY KEY,
		razao_social VARCHAR(100) NOT NULL,
		id_estado INT,
		FOREIGN KEY (id_estado) REFERENCES estados(id_estado)
	);

```

## Comandos

```
	SELECT
  		c.id_cliente, 
    	c.razao_social, 
    	GROUP_CONCAT(t.numero SEPARATOR ', ') AS telefones
	FROM 
    	clientes c
	JOIN 
    	estados e ON c.id_estado = e.id_estado
	LEFT JOIN 
    	telefones t ON c.id_cliente = t.id_cliente
	WHERE 
    	e.uf = 'SP'
	GROUP BY 
   		c.id_cliente, c.razao_social;	

```