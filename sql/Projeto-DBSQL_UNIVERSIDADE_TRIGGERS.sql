-- TRIGGER 1: Define status 'Ativo' automaticamente ao inserir nova matrícula
CREATE TRIGGER trg_set_status_matricula
ON tbl_matricula
AFTER INSERT
AS
BEGIN
    -- Atualiza o status da matrícula para 'Ativo' se estiver nulo
    UPDATE tbl_matricula
    SET status_matricula = 'Ativo'
    WHERE cod_matricula IN (SELECT cod_matricula FROM INSERTED)
      AND status_matricula IS NULL;
END;
GO

-- TRIGGER 2: Impede matrícula duplicada do mesmo aluno na mesma turma
CREATE TRIGGER trg_prevent_duplicate_matricula
ON tbl_matricula
INSTEAD OF INSERT
AS
BEGIN
    -- Verifica se o aluno já está matriculado na turma
    IF EXISTS (
        SELECT 1
        FROM tbl_matricula m
        JOIN INSERTED i ON m.ra_aluno = i.ra_aluno AND m.cod_turma = i.cod_turma
    )
    BEGIN
        RAISERROR('Aluno já matriculado nesta turma.', 16, 1);
        RETURN;
    END

    -- Caso não exista duplicidade, permite a inserção
    INSERT INTO tbl_matricula (ra_aluno, cod_turma, data_matricula, data_cancelamento, motivo_cancelamento, status_matricula)
    SELECT ra_aluno, cod_turma, data_matricula, data_cancelamento, motivo_cancelamento, status_matricula
    FROM INSERTED;
END;
GO

-- TRIGGER 3: Verifica se aluno cursou os pré-requisitos antes de registrar no histórico
CREATE TRIGGER trg_check_prerequisitos
ON tbl_historico
INSTEAD OF INSERT
AS
BEGIN
    -- Verifica se há algum pré-requisito não cumprido (não aprovado) pelo aluno
    IF EXISTS (
        SELECT 1
        FROM INSERTED i
        JOIN tbl_disciplina_prerequisito p ON i.cod_disciplina = p.cod_disciplina
        LEFT JOIN tbl_historico h ON h.cod_disciplina = p.cod_prerequisito 
                                   AND h.ra_aluno = i.ra_aluno 
                                   AND h.situacao_historico = 'Aprovado'
        WHERE h.cod_disciplina IS NULL
    )
    BEGIN
        RAISERROR('Aluno não cumpriu os pré-requisitos para esta disciplina.', 16, 1);
        RETURN;
    END

    -- Se passou, insere normalmente o registro no histórico
    INSERT INTO tbl_historico (cod_disciplina, ra_aluno, ano, semestre, nota, frequencia, situacao_historico)
    SELECT cod_disciplina, ra_aluno, ano, semestre, nota, frequencia, situacao_historico
    FROM INSERTED;
END;
GO

-- TRIGGER 4: Gera email institucional automático para professores
CREATE TRIGGER trg_email_professor
ON tbl_professor
AFTER INSERT
AS
BEGIN
    -- Atualiza o email corporativo com base no nome e sobrenome do professor
    UPDATE p
    SET email_corporativo = 
        LOWER(LEFT(i.nome_professor, CHARINDEX(' ', i.nome_professor + ' ') - 1) + '.' + i.sobrenome) + '@universidade.edu.br'
    FROM tbl_professor p
    JOIN INSERTED i ON p.cod_professor = i.cod_professor
    WHERE i.email_corporativo IS NULL;
END;
GO