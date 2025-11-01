Scenario: Exibir lista de cursos disponíveis
 Given que o usuario acessa a pagina inicial
 when ele rola ate a secao "Cursos"
 The o sistema deve exibir a lista de cursos com imagem, titulo e descricao

Scenario: Nenhum curso disponivel
  Given que o sistema não possui cursos cadastrados
  When o usuário acessa a seção "Cursos"
  Then o sistema deve exibir a mensagem "Nenhum curso disponível no momento"

Scenario: Atualização dinâmica da lista
  Given que o usuário está na seção de cursos
  When um novo curso é adicionado no sistema
  Then a lista de cursos deve ser atualizada automaticamente

Scenario: Visualizar detalhes de um curso existente
  Given que o usuário está na lista de cursos
  When ele clica em um curso válido
  Then o sistema deve exibir a página de detalhes com título, descrição e instrutor

Scenario: Tentar visualizar curso inexistente
  Given que o usuário acessa a URL de um curso que não existe
  When o sistema tenta carregar os dados
  Then o sistema deve exibir a mensagem "Curso não encontrado"

Scenario: Voltar à lista de cursos
  Given que o usuário está na página de detalhes de um curso
  When ele clica no botão "Voltar"
  Then o sistema deve retornar à página de lista de cursos

Scenario: Buscar curso existente
  Given que o usuário está na página de cursos
  When ele digita "JavaScript" no campo de busca
  Then o sistema deve exibir todos os cursos que contenham "JavaScript" no título

Scenario: Buscar curso inexistente
  Given que o usuário está na página de cursos
  When ele pesquisa por "Astrologia"
  Then o sistema deve exibir a mensagem "Nenhum resultado encontrado"

Scenario: Buscar com menos de 3 caracteres
  Given que o usuário está na página de cursos
  When ele digita "QA"
  Then o sistema deve exibir uma mensagem "Digite pelo menos 3 caracteres"

Scenario: Campo de busca vazio
  Given que o usuário limpou o campo de pesquisa
  When o campo estiver vazio
  Then o sistema deve exibir todos os cursos novamente

Scenario: Inscrição bem-sucedida
  Given que o usuário está logado
  And acessa a página de detalhes de um curso
  When ele clica em "Inscrever-se"
  Then o sistema deve exibir a mensagem "Inscrição realizada com sucesso"

Scenario: Tentar se inscrever sem login
  Given que o usuário não está logado
  When ele tenta clicar em "Inscrever-se"
  Then o sistema deve redirecionar para a página de login

Scenario: Usuário já inscrito
  Given que o usuário está logado e já inscrito em um curso
  When ele tenta clicar em "Inscrever-se"
  Then o sistema deve exibir a mensagem "Você já está inscrito neste curso"

Scenario: Cancelar inscrição
  Given que o usuário está logado e inscrito em um curso
  When ele clica em "Cancelar inscrição"
  Then o sistema deve exibir a mensagem "Inscrição cancelada com sucesso"

Scenario: Visualizar site em dispositivo móvel
  Given que o usuário acessa o site em um dispositivo móvel
  When ele navega até a seção de cursos
  Then os elementos devem se ajustar corretamente à largura da tela

Scenario: Verificar textos alternativos
  Given que o usuário acessa a página de cursos
  When ele inspeciona as imagens
  Then todas devem conter texto alternativo (atributo "alt")

Scenario: Verificar tempo de carregamento
  Given que o usuário acessa a página inicial
  When o site termina de carregar
  Then o tempo total não deve exceder 3 segundos
