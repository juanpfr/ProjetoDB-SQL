USE Universidade;

-- Para ver a estrutura da tabela // como se fosse o DESC no MYSQL
sp_help tbl_matricula;

-- Alteração de dados
UPDATE tbl_matricula
SET status_matricula = 'Ativa'
WHERE status_matricula = 'Ativo';