# ProjetoDB-SQL
## Projeto de Banco de Dados - Universidade

### Apresentação
Este projeto visa a criação de um banco de dados para o gerenciamento de uma universidade, centralizando o controle de alunos, professores, cursos, disciplinas, histórico escolar e turmas.

### Objetivos do Banco de Dados
- Realizar controle centralizado de:
  - Alunos
  - Professores
  - Cursos
  - Disciplinas
  - Histórico Escolar
  - Turmas

---

## Fases do Projeto

O projeto será dividido nas seguintes fases:

1. **Levantamento dos Requisitos**
2. **Identificação de Entidades e Relacionamentos**
3. **Modelo E-R**
4. **Diagrama E-R**
5. **Dicionário de Dados**
6. **Normalização**
7. **Implementação**
8. **Testes Básicos**

---

## Regras do Negócio

### Regras Relacionadas aos Alunos:
- **Trancamento de Matrícula**: Alunos podem trancar matrícula, não estando então matriculados em nenhuma disciplina no semestre.
- **Limite de Disciplinas**: Cada aluno pode se matricular em no máximo 8 disciplinas por semestre.
- **Reprovação**: O aluno só pode ser reprovado no máximo 3 vezes na mesma disciplina.
- **Capacidade de Alunos**: A universidade terá no máximo 2.000 alunos matriculados simultaneamente, distribuídos entre 6 cursos distintos.
- **Entrada de Novos Alunos**: A universidade recebe 200 alunos novos por ano.
- **Disciplinas**: Existem 60 disciplinas disponíveis no total.

### Regras Relacionadas ao Histórico Escolar:
- **Histórico Escolar**: O Histórico Escolar traz todas as disciplinas cursadas por um aluno, incluindo:
  - Nota final
  - Frequência
  - Período do curso realizado

### Regras Relacionadas aos Professores:
- **Cadastro de Professores**: Professores podem ser cadastrados mesmo sem lecionar disciplinas.
- **Quantidade de Professores**: A universidade possui 30 professores no total.
- **Limite de Disciplinas Lecionadas**: Cada professor leciona no máximo 3 disciplinas diferentes.
- **Vinculação a Departamento**: Cada professor é vinculado a um departamento.
- **Identificação dos Professores**: Professores são identificados por um código único.

---

## Observações
Este banco de dados tem como objetivo otimizar o gerenciamento acadêmico da universidade, garantindo a organização e a integridade das informações relacionadas a alunos, professores e cursos, de acordo com as regras de negócios estabelecidas.
