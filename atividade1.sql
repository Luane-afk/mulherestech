--criando meu primeiro banco de dados
CREATE DATABASE senac_copacabana;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
  id_aluno INTEGER PRIMARY KEY,
  nome_aluno TEXT NOT NULL,
  genero TEXT NOT NULL
);
-- injeção de dados-teste
INSERT INTO alunos(id_aluno,nome_aluno,genero)
VALUES 
(1, 'Marina', 'F'),
(2, 'Joana', 'F'),
(3,'Mario','M'),
(4,'Letícia','F'),
(5,'João','M'),
(6,'Luluca','F'),
(7,'Diego','M');
-- consultando as injeções realizadas
SELECT * FROM alunos WHERE id_aluno=1 -- desse modo visualiza dentro de alunos where ( que indica a onde ve ) so mente o desejado .

--ATIVIDADE: Crie uma nova tabela chamada 'professores', com a mesma quantidade de características de 'alunos',
--fazendo ao menos duas injeções de dados e uma consulta.

-- entidade tabela prof
CREATE TABLE professores (
  matricula_prof INTEGER PRIMARY KEY,
  nome_prof TEXT NOT NULL,
  carga_horaria TEXT NOT NULL
);

INSERT INTO professores VALUES (1001,'João T','40 horas');       -- esse jeito de fazer a injeção tbm esta correto, porém esse e o mais demorado o da tabela disciplina e o mais rápido 
INSERT INTO professores (matricula_prof, nome_prof,carga_horaria)
VALUES
(1002, 'Regina B','30 horas'),
(1003, 'Louisa C','50 horas'),
(1004, 'Maria Luca D','20 horas'),
(1005, 'Rebeca E','60 horas'),
(1006, 'Roberto F','90 horas'),
(1007, 'Luana R','150 horas');

SELECT * FROM professores; -- esse modo de visualização de tabela tbm está correta, diferente da primeira aqui mostra todos os dados .

-- ATIVIDADE para avaliar na semana que vem: Criem mais uma tabela que possa ter relação com 'alunos'
-- e 'professores', fazendo pelo menos a construção com 7 atributos e 7 injeções. Não esqueça de 
-- que todas precisam estar relacionadas

-- tabela de disciplina que relaciona prof e alunos .
CREATE TABLE disciplina (
	id_disciplina INT PRIMARY KEY,
	id_aluno INT NOT NULL,                             -- Relaciona com professores e alunos
	matricula_prof INT NOT NULL,
	nome_disciplina VARCHAR(100) NOT NULL,  -- Nome da disciplina
	sala VARCHAR(50) NOT NULL,                -- nome ou numero da sala 
    tipo_avaliacao VARCHAR(50) NOT NULL,      
    metodo_ensino VARCHAR(50) NOT NULL,               -- presencial ou EAD
    CONSTRAINT fk_disciplina_alunos FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),            -- preciso faz alguma coisa para lembrar desse constraint, sempre esqueço pra que serve kkkk 
    CONSTRAINT fk_disciplina_professores FOREIGN KEY (matricula_prof) REFERENCES professores(matricula_prof)
);

-- colocando informaçoes 

INSERT INTO disciplina (id_disciplina, id_aluno, matricula_prof, nome_disciplina, sala, tipo_avaliacao, metodo_ensino)
VALUES 
(1, 1, 1001, 'Matemática', 'Sala 101', 'Prova', 'Presencial'),
(2, 2, 1002, 'História', 'Sala 102', 'Projeto', 'EAD'),
(3, 1, 1001, 'Física', 'Laboratório 1', 'Prova', 'Presencial'),
(4, 3, 1003, 'Química', 'Laboratório 2', 'Trabalho', 'Presencial'),
(5, 4, 1004, 'Biologia', 'Sala 103', 'Trabalho', 'EAD'),
(6, 5, 1005, 'Educação Física', 'Ginásio', 'Prática', 'Presencial'),
(7, 6, 1006, 'Arte', 'Sala 104', 'Final', 'EAD');

          -- vizualizando 
          
SELECT * FROM disciplina;
