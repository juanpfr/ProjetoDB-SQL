USE Universidade;

-- Selecionar tabela departamento
SELECT * FROM tbl_departamento;

-- Selecionar tabela curso
SELECT * FROM tbl_curso;

-- Selecionar tabela aluno
SELECT * FROM tbl_aluno;

-- Selecionar tabela professor
SELECT * FROM tbl_professor;

-- Selecionar tabela endereço
SELECT * FROM tbl_endereco;

-- Selecionar tabela disciplina
SELECT * FROM tbl_disciplina;

-- Selecionar tabela histórico
SELECT * FROM tbl_historico;

-- Selecionar tabela telefone do aluno
SELECT * FROM tbl_telefone_aluno;

-- Selecionar tabela telefone do professor
SELECT * FROM tbl_telefone_professor;

-- Selecionar tabela matrícula
SELECT * FROM tbl_matricula;

-- Selecionar tabela turma
SELECT * FROM tbl_turma;

-- Selecionar tabela de relacionamento curso com disciplina
SELECT * FROM tbl_curso_disciplina;

-- Selecionar tabela de relacionamento professor com disciplina
SELECT * FROM tbl_professor_disciplina;

-- Selecionar tabela pré requisito da disciplina
SELECT * FROM tbl_disciplina_prerequisito;



-- TESTES



-- Selecionar ra_aluno, nome completo, nome da disciplina, nota e frequência
SELECT
	a.ra_aluno,
	a.nome_aluno + ' ' + a.sobrenome_aluno AS 'Nome completo do aluno',
	d.nome_disciplina,
	h.nota, h.frequencia,
	h.situacao_historico
FROM tbl_historico AS h
JOIN tbl_aluno AS a
ON a.ra_aluno = h.ra_aluno
JOIN tbl_disciplina AS d
ON d.cod_disciplina = h.cod_disciplina
WHERE a.ra_aluno = 1
ORDER BY h.ano, h.semestre;

-- Selecionar professores que ministram determinada disciplina
SELECT
	p.cod_professor,
	p.nome_professor + ' ' + p.sobrenome AS 'Nome completo',
	d.nome_disciplina
FROM tbl_professor_disciplina AS pd
JOIN tbl_professor AS p
ON p.cod_professor = pd.cod_professor
JOIN tbl_disciplina AS d
ON d.cod_disciplina = pd.cod_disciplina;

-- Selecionar alunos matriculados em uma turma específica
SELECT
	a.ra_aluno,
	a.nome_aluno + ' ' + a.sobrenome_aluno AS 'Nome completo do aluno',
	t.cod_turma AS 'Turma',
	t.ano,
	t.semestre,
	m.status_matricula,
	m.data_matricula
FROM tbl_matricula AS m
JOIN tbl_aluno AS a
ON a.ra_aluno = m.ra_aluno
JOIN tbl_turma AS t
ON t.cod_turma = m.cod_turma;

-- Selecionar as disciplinas obrigatórias de um curso
SELECT
	c.nome_curso,
	d.nome_disciplina,
	cd.tipo_disciplina
FROM tbl_curso_disciplina AS cd
JOIN tbl_curso AS c
ON c.cod_curso = cd.cod_curso
JOIN tbl_disciplina AS d
ON d.cod_disciplina = cd.cod_disciplina
WHERE tipo_disciplina = 'O';

-- Selecionar completo de um aluno
SELECT
	a.ra_aluno,
	a.nome_aluno + ' ' + a.sobrenome_aluno AS 'Nome completo do aluno',
	e.nome_rua,
	e.numero,
	e.complemento,
	e.cidade,
	e.estado,
	e.cep
FROM tbl_aluno AS a
JOIN tbl_endereco AS e
ON a.cod_endereco = e.cod_endereco;

-- Selecionar disciplinas que possuem pré-requisitos
SELECT
	d.nome_disciplina,
	dp.nome_disciplina AS 'Pré-requisito'
FROM tbl_disciplina_prerequisito AS pr
JOIN tbl_disciplina AS d
ON d.cod_disciplina = pr.cod_disciplina
JOIN tbl_disciplina AS dp
ON pr.cod_prerequisito = dp.cod_disciplina
ORDER BY d.nome_disciplina;

-- Selecionar alunos e seus respectivos cursos
SELECT
	a.ra_aluno,
	a.nome_aluno + ' ' + a.sobrenome_aluno AS 'Nome completo do aluno',
	c.nome_curso,
	c.tipo,
	c.duracao_meses,
	d.nome_departamento AS 'Nome do departamento',
	c.turno,
	c.carga_horaria_total,
	c.modalidade
FROM tbl_aluno AS a
JOIN tbl_curso AS c
ON a.cod_curso = c.cod_curso
JOIN tbl_departamento AS d
ON c.cod_departamento = d.cod_departamento;

-- Selecionar professores que atuam em mais de um departamento
-- Não é possível fazer esta consulta, ela estaria fora da regra de negócio (importante)

-- Selecionar número de alunos por curso
SELECT
	c.nome_curso,
	COUNT(a.ra_aluno) AS 'Qtd. alunos'
FROM tbl_aluno AS a
JOIN tbl_curso AS c
ON a.cod_curso = c.cod_curso
GROUP BY c.nome_curso;

-- Selecionar turma com seus professores responsáveis e disciplinas
SELECT
	t.cod_turma,
	p.nome_professor + ' ' + p.sobrenome AS 'Nome completo do professor',
	d.nome_disciplina
FROM tbl_turma AS t
JOIN tbl_professor AS p
ON t.cod_professor = p.cod_professor
JOIN tbl_disciplina AS d
ON t.cod_disciplina = d.cod_disciplina;

-- Selecionar sala onde um professor está ministrando aulas
SELECT
	t.cod_turma,
	p.nome_professor + ' ' + p.sobrenome AS 'Nome completo do professor',
	t.sala,
	t.ano,
	t.semestre
FROM tbl_turma AS t
JOIN tbl_professor AS p
ON t.cod_professor = p.cod_professor;

-- Selecionar departamento de um professor, ou seja, a qual departamento ele pertence?
SELECT
	p.nome_professor + ' ' + p.sobrenome AS 'Nome completo do professor',
	d.nome_departamento
FROM tbl_professor AS p
JOIN tbl_departamento AS d
ON p.cod_departamento = d.cod_departamento;





















































































































































































SELECT a.nome_aluno, a.sobrenome_aluno, d.nome_disciplina, h.nota FROM tbl_aluno AS a
JOIN tbl_historico AS h
ON a.ra_aluno = h.ra_aluno
JOIN tbl_disciplina AS d
ON d.cod_disciplina = h.cod_disciplina;