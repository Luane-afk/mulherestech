-- Criando meu primeiro banco de dados 
CREATE DATABASE senac_copacabana; -- crete funciona para dar uma função 

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
	matricula INTEGER PRIMARY KEY, -- interger é int .
	nome_aluno TEXT NOT NULL,-- text é string. not null ( nao permite que não seja preenchido )!
	genero TEXT NOT NULL
);
-- injeção de dados-teste
INSERT INTO alunos VALUES (1,'Marina','F');
INSERT INTO alunos 	VALUES (2,'Joana','F');


-- consultando as injeçoes realizadas 
SELECT * FROM alunos WHERE matricula=1 -- * seleciona tudo , alunos é de onde eu quero tirar as informaçoes 

-- CRIANDO UMA NOVA TABELA ABAIXO 

CREATE TABLE tutor(
	id_tutor INTEGER PRIMARY KEY,
    nome_professor TEXT NOT NULL,
    diciplina TEXT NOT NULL
    );
    
    -- FAZENDO A COLOCAÇÃO OU INJEÇÃO 
    
    INSERT INTO tutor VALUES (582,'João', 'Inglês');
    INSERT INTO tutor VALUES (563,'Maria','Português');
    
    -- consulta da colocação dos dados 
    
    SELECT * FROM tutor WHERE id_tutor=582
