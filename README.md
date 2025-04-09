# ProjetoDB-SQL
Projeto de banco de dados.

Projeto Prático: Apresentação e Regras do Negócio
Apresentação
Banco de Dados para Gerenciamento de uma Universidade.
Objetivos do Banco de Dados:
Realizar controle centralizado de alunos, professores, cursos,
disciplinas, histórico escolar e turmas.
Fases do Projeto
Fases:
• Levantamento dos Requisitos
• Identificação de Entidades e Relacionamentos
• Modelo E-R
• Diagrama E-R
• Dicionário de Dados Normalização
• Implementação
• Testes Básicos
Regras do Negócio
• Alunos podem trancar matrícula, não estando então
matriculados em nenhuma disciplina no semestre.
• Em cada semestre, cada aluno pode se matricular em no
máximo 6 disciplinas.
• O aluno só pode ser reprovado no máximo 2 vezes na
mesma disciplina.
• A universidade terá no máximo 2.000 alunos matriculados
simultaneamente, em 6 cursos distintos.
• Entram 200 alunos novos por ano.
• Existem 60 disciplinas no total disponíveis.
Regras do Negócio
• Um Histórico Escolar traz todas as disciplinas cursadas por
um aluno, incluindo nota final, frequência e período do curso
realizado.
• Professores podem ser cadastrados mesmo sem lecionar
disciplinas.
• Existem 30 professores trabalhando na escola.
• Cada professor irá lecionar no máximo 3 disciplinas
diferentes.
• Cada professor é vinculado a um departamento.
• Professores são identificados por um código de professor.
