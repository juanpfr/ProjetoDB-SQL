USE Universidade;

-- Inserir departamentos
INSERT INTO tbl_departamento (nome_departamento) VALUES
('Ci�ncia da Computa��o'),
('Engenharia El�trica'),
('Administra��o'),
('Matem�tica'),
('F�sica');

-- Inserir endere�os
INSERT INTO tbl_endereco (nome_rua, numero, complemento, bairro, cidade, estado, cep) VALUES
('Rua das Flores', 123, 'Apto 101', 'Jardim Am�rica', 'S�o Paulo', 'SP', '01456001'),
('Avenida Brasil', 987, 'Casa', 'Centro', 'Rio de Janeiro', 'RJ', '20040030'),
('Rua das Ac�cias', 250, 'Bloco B', 'Vila Mariana', 'S�o Paulo', 'SP', '04123050'),
('Pra�a da Liberdade', 10, 'Sala 5', 'Liberdade', 'Belo Horizonte', 'MG', '30140071'),
('Rua das Palmeiras', 75, 'Apartamento 302', 'Pinheiros', 'S�o Paulo', 'SP', '05422030');

-- Inserir disciplinas
INSERT INTO tbl_disciplina (nome_disciplina, ementa, cod_departamento, carga_horaria_total) VALUES
('Introdu��o � Programa��o', 'Fundamentos b�sicos de programa��o.', 1, 60),
('Circuitos El�tricos', 'Estudo de circuitos e componentes el�tricos.', 2, 80),
('Teoria Administrativa', 'Princ�pios e teorias da administra��o.', 3, 70),
('C�lculo I', 'Limites, derivadas e integrais.', 4, 90),
('Mec�nica Cl�ssica', 'Leis de Newton e din�mica.', 5, 75);

-- Inserir professores
INSERT INTO tbl_professor (nome_professor, sobrenome, data_nascimento, identificacao_genero, data_contratacao, tipo_vinculo, cpf, rg, titulacao, cod_endereco, email_pessoal, email_corporativo, status_professor, cod_departamento) VALUES
('Carlos', 'Silva', '1975-03-15', 'Masculino', '2010-02-01', 'Efetivo', '123.456.789-00', 'MG-12.345.678', 'Doutor', 1, 'carlos.silva@gmail.com', 'c.silva@univ.edu.br', 'Ativo', 1),
('Ana', 'Souza', '1980-07-22', 'Feminino', '2015-08-15', 'Contrato', '987.654.321-00', 'RJ-87.654.321', 'Mestre', 2, 'ana.souza@gmail.com', 'a.souza@univ.edu.br', 'Ativo', 2),
('Roberto', 'Lima', '1968-11-30', 'Masculino', '2005-01-10', 'Efetivo', '321.654.987-00', 'SP-56.789.123', 'Doutor', 3, 'roberto.lima@gmail.com', 'r.lima@univ.edu.br', 'Ativo', 3),
('Juliana', 'Pereira', '1985-05-18', 'Feminino', '2018-03-20', 'Substituto', '456.789.123-00', 'MG-23.456.789', 'Especialista', 4, 'juliana.pereira@gmail.com', 'j.pereira@univ.edu.br', 'Ativo', 4),
('Marcos', 'Oliveira', '1979-09-09', 'Masculino', '2012-06-25', 'Efetivo', '654.321.987-00', 'RJ-45.678.912', 'Doutor', 5, 'marcos.oliveira@gmail.com', 'm.oliveira@univ.edu.br', 'Ativo', 5);

-- Inserir telefones dos professores
INSERT INTO tbl_telefone_professor (cod_professor, num_telefone, tipo_telefone) VALUES
(1, '(11) 99999-1111', 'Celular'),
(1, '(11) 3222-1111', 'Fixo'),
(2, '(21) 98888-2222', 'Celular'),
(3, '(11) 97777-3333', 'Celular'),
(4, '(31) 96666-4444', 'Celular');

-- Inserir cursos
INSERT INTO tbl_curso (nome_curso, tipo, duracao_meses, cod_departamento, turno, carga_horaria_total, modalidade) VALUES
('Engenharia de Software', 'Gradua��o', 48, 1, 'Noturno', 3200, 'Presencial'),
('Engenharia El�trica', 'Gradua��o', 60, 2, 'Integral', 3600, 'Presencial'),
('Administra��o de Empresas', 'Gradua��o', 48, 3, 'Matutino', 3000, 'Presencial'),
('Licenciatura em Matem�tica', 'Gradua��o', 48, 4, 'Noturno', 2800, 'Presencial'),
('F�sica Aplicada', 'Gradua��o', 48, 5, 'Integral', 3000, 'Presencial');

-- Inserir alunos
INSERT INTO tbl_aluno (nome_aluno, sobrenome_aluno, data_nascimento, identificacao_genero, cpf, rg, nacionalidade, estado_civil, naturalidade, deficiencia, data_ingresso, email_pessoal, email_coorporativo, status_aluno, nome_mae, nome_pai, cod_endereco, cod_curso) VALUES
('Pedro', 'Alves', '2000-01-10', 'Masculino', '111.222.333-44', 'SP-12.345.678', 'Brasileira', 'Solteiro', 'S�o Paulo', 'Nenhuma', '2018-03-01', 'pedro.alves@gmail.com', 'p.alves@univ.edu.br', 'Ativo', 'Maria Alves', 'Jo�o Alves', 1, 1),
('Ana', 'Carvalho', '1999-05-20', 'Feminino', '222.333.444-55', 'RJ-23.456.789', 'Brasileira', 'Solteira', 'Rio de Janeiro', 'Nenhuma', '2017-03-01', 'ana.carvalho@gmail.com', 'a.carvalho@univ.edu.br', 'Ativo', 'Clara Carvalho', 'Carlos Carvalho', 2, 2),
('Lucas', 'Fernandes', '2001-07-15', 'Masculino', '333.444.555-66', 'SP-34.567.890', 'Brasileira', 'Solteiro', 'S�o Paulo', 'Nenhuma', '2019-03-01', 'lucas.fernandes@gmail.com', 'l.fernandes@univ.edu.br', 'Ativo', 'Patr�cia Fernandes', 'Roberto Fernandes', 3, 3),
('Juliana', 'Martins', '2000-11-30', 'Feminino', '444.555.666-77', 'MG-45.678.901', 'Brasileira', 'Solteira', 'Belo Horizonte', 'Nenhuma', '2018-03-01', 'juliana.martins@gmail.com', 'j.martins@univ.edu.br', 'Ativo', 'Sonia Martins', 'Eduardo Martins', 4, 4),
('Carlos', 'Santos', '1998-03-25', 'Masculino', '555.666.777-88', 'SP-56.789.012', 'Brasileira', 'Casado', 'S�o Paulo', 'Nenhuma', '2016-03-01', 'carlos.santos@gmail.com', 'c.santos@univ.edu.br', 'Ativo', 'Fernanda Santos', 'Paulo Santos', 5, 5);

-- Inserir telefones dos alunos
INSERT INTO tbl_telefone_aluno (ra_aluno, num_telefone, tipo_telefone) VALUES
(1, '(11) 98888-0001', 'Celular'),
(1, '(11) 3222-0001', 'Fixo'),
(2, '(21) 97777-0002', 'Celular'),
(3, '(11) 96666-0003', 'Celular'),
(4, '(31) 95555-0004', 'Celular');

-- Inserir turmas
INSERT INTO tbl_turma (cod_curso, sala, ano, semestre, cod_disciplina, cod_professor, periodo, numero_alunos, data_inicio, data_fim) VALUES
(1, 'Sala 101', 2023, 1, 1, 1, 'Matutino', 30, '2023-02-01', '2023-06-30'),
(2, 'Sala 202', 2023, 1, 2, 2, 'Integral', 40, '2023-02-01', '2023-06-30'),
(3, 'Sala 303', 2023, 1, 3, 3, 'Noturno', 25, '2023-02-01', '2023-06-30'),
(4, 'Sala 404', 2023, 1, 4, 4, 'Matutino', 35, '2023-02-01', '2023-06-30'),
(5, 'Sala 505', 2023, 1, 5, 5, 'Integral', 20, '2023-02-01', '2023-06-30');

-- Inserir hist�rico acad�mico
INSERT INTO tbl_historico (cod_disciplina, ra_aluno, ano, semestre, nota, frequencia, situacao_historico) VALUES
(1, 1, 2023, 1, 8.5, 90, 'Aprovado'),
(2, 2, 2023, 1, 7.0, 85, 'Aprovado'),
(3, 3, 2023, 1, 9.0, 95, 'Aprovado'),
(4, 4, 2023, 1, 6.5, 80, 'Aprovado'),
(5, 5, 2023, 1, 5.0, 70, 'Reprovado');

-- Inserir matr�culas
INSERT INTO tbl_matricula (ra_aluno, cod_turma, data_matricula, data_cancelamento, motivo_cancelamento, status_matricula) VALUES
(1, 1, '2023-01-15', NULL, NULL, 'Ativa'),
(2, 2, '2023-01-15', NULL, NULL, 'Ativa'),
(3, 3, '2023-01-15', NULL, NULL, 'Ativa'),
(4, 4, '2023-01-15', NULL, NULL, 'Ativa'),
(5, 5, '2023-01-15', NULL, NULL, 'Ativa');

-- Inserir disciplinas por curso
INSERT INTO tbl_curso_disciplina (cod_curso, cod_disciplina, tipo_disciplina) VALUES
(1, 1, 'Obrigat�ria'),
(2, 2, 'Obrigat�ria'),
(3, 3, 'Obrigat�ria'),
(4, 4, 'Obrigat�ria'),
(5, 5, 'Obrigat�ria');

-- Inserir disciplinas atribu�das aos professores
INSERT INTO tbl_professor_disciplina (cod_professor, cod_disciplina) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserir pr�-requisitos das disciplinas
INSERT INTO tbl_disciplina_prerequisito (cod_disciplina, cod_prerequisito) VALUES
(2, 1), -- Circuitos El�tricos depende de Introdu��o � Programa��o
(3, 1), -- Teoria Administrativa depende de Introdu��o � Programa��o
(4, 1), -- C�lculo I depende de Introdu��o � Programa��o
(5, 4), -- Mec�nica Cl�ssica depende de C�lculo I
(5, 2); -- Mec�nica Cl�ssica depende de Circuitos El�tricos (hipot�tico)