#language pt
  Funcionalidade:Alocacao de monitorias remuneradas conforme a seleção semiautomática

    Cenário de Fundo:
      Dado que o banco possui varias disciplinas.
      E que o banco possui varias turmas.
      E que o banco possui alunos e professores.
      E que o banco possui vagas de monitoria remunerada alocadas.
      E o "admin" está logado.

    Cenário: Eu enquanto administrador, defino a quantidade de monitores para uma disciplina (Happy path)
      Dado que o numero de vagas de monitoria remunerada alocadas é menor que o numero de monitores para a disciplina
      E o sistema faz a alocacao de vagas de monitoria voluntaria
      Então o numero de  vagas de monitoria volutaria alocadas para a disciplina igual a diferença da quantidade de monitores e o numero de vagas de monitoria remunerada alocadas

    Cenário: Eu enquanto administrador, defino a quantidade de monitores para uma disciplina (Sad path)
      Dado que o numero de vagas de monitoria remunerada alocadas é menor que o numero de monitores para a disciplina
      E o sistema faz a alocacao de vagas de monitoria voluntaria
      Então o numero de  vagas de monitoria volutaria alocadas para a disciplina menor que a diferença da quantidade de monitores e o numero de vagas de monitoria remunerada alocadas

