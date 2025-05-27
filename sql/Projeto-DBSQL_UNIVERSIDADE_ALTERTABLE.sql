USE Universidade;

-- Importante selecionar a tabela para ter noção das alterações
SELECT * FROM tbl_aluno;

SELECT * FROM tbl_professor;

SELECT * FROM tbl_curso_disciplina;

SELECT * FROM tbl_matricula;

SELECT * FROM tbl_curso;

-- Adicionando uma "constraint" a coluna gênero
ALTER TABLE tbl_aluno
ADD CONSTRAINT ck_genero_aluno CHECK(identificacao_genero IN('Masculino', 'Feminino', 'Outro'));

-- Adicionando uma "constraint" a coluna gênero
ALTER TABLE tbl_professor
ADD CONSTRAINT ck_genero_professor CHECK(identificacao_genero IN('Masculino', 'Feminino', 'Outro'));

-- Status do aluno permitido
ALTER TABLE tbl_aluno
ADD CONSTRAINT ck_status_aluno CHECK(status_aluno IN ('Ativo', 'Formado', 'Trancado', 'Cancelado'));

-- Status do professor permitido (errado)
ALTER TABLE tbl_professor
ADD CONSTRAINT ck_status_professor CHECK(status_professor IN ('Ativo', 'Formado', 'Trancado', 'Cancelado'));

-- Status do professor permitido (corrigido)
ALTER TABLE tbl_professor
DROP CONSTRAINT ck_status_professor;

-- Adicionando "constraint" status do professor
ALTER TABLE tbl_professor
ADD CONSTRAINT ck_status_professor CHECK(status_professor IN ('Ativo', 'Inativo', 'Licenciado'));

-- Adicionando "constraint" tipo de vínculo do professor permitido
ALTER TABLE tbl_professor
ADD CONSTRAINT ck_tipo_vinculo_professor CHECK(tipo_vinculo IN ('Efetivo', 'Substituto', 'Temporário'));

-- Adicionando "constraint" para tipo de disciplina permitido
ALTER TABLE tbl_curso_disciplina
ADD CONSTRAINT ck_tipo_disciplina CHECK(tipo_disciplina IN ('Obrigatória', 'Optativa'));

-- Adicionando "constraint" para status da matrícula
ALTER TABLE tbl_matricula
ADD CONSTRAINT ck_status_matricula CHECK(status_matricula IN ('Ativa', 'Cancelada', 'Trancada'));

-- Adicionando "constraint" para turno permitido do curso
ALTER TABLE tbl_curso
ADD CONSTRAINT ck_turno_curso CHECK(turno IN ('Matutino', 'Vespertino', 'Noturno', 'Integral'));

-- Adicionando "constraint" para modalidade do curso
ALTER TABLE tbl_curso
ADD CONSTRAINT ck_modalidade_curso CHECK(modalidade IN ('Presencial', 'EAD'));