# Passo a Passo de Execução dos Testes

Descrição de passo a passo de como executar manualmente cada cado de teste

Responsável pelos testes: Maria Eduarda Silva

## Pré-requisitos

- Acesso ao site https://creative-sherbet-a51eac.netlify.app/

- Navegador Google Chrome ou similar

- Ferramenta para capturar prints

- Acesso ao Google Drive para upload de evidências e ao Google Sheets

- Acesso ao repositório do projeto

## Como Executar

### Cenário: CT001 — Exibir lista de cursos disponíveis

Pré-condição: site disponível.

Passos

1. Acesse a página inicial.

2. Role até a seção "Cursos".

3. Verifique se a lista de cursos é exibida corretamente (mínimo 1 item).

3. Confirme se cada item contém:

4. Imagem

5.Título

6. Descrição

Resultado esperado: Todos os cursos visíveis com elementos completos.

### Cenário: CT02 - Exibir mensagem ao não encontrar resultados

Pré-condição: ambiente de teste que permita zerar cursos (se disponível).

Passos:

1. No campo de busca, digite um termo inexistente (ex: “Astronomia”).

2. Aguarde o término do filtro.

3. Observe se uma mensagem de "nenhum curso encontrado" é exibida.

Resultado esperado: Mensagem clara de ausência de resultados.

### Cenário: CT03 - Buscar curso existente

Pré-condição: acesso a staging/admin para adicionar curso em tempo real.

Passos:

1. Na página de cursos, digite no campo de busca: "QA".

2. Aguarde o filtro automático.

3. Verifique se o curso com esse nome é exibido.

4. Confirme se o título contém o termo pesquisado.

Resultado esperado: Pelo menos 1 curso com o termo.


### Cenário: CT04 - Validação da estrutura do card do curso

Pré-condição: ao menos 1 curso disponível.

Passos:

1. Localize um card de curso na seção "Cursos".

2. Verifique se ele contém:

-  Imagem com dimensões adequadas

- Título

- Descrição resumida e visível

Observe espaçamento, alinhamento e responsividade.

Resultado esperado: Estrutura visual dos cards correta e responsiva.

### Cenário: CT05 - Atualização dinâmica dos resultados ao digitar

Pré-condição: saber padrão de URL dos cursos

Passos:

1. Acessar manualmente uma URL de curso inválida.

2. Aguardar resposta do frontend.

3. Verificar mensagem/estado retornado.

Resultado esperado: mensagem “Curso não encontrado” ou página 404 amigável.

### Cenário: CT006 — Voltar à lista de cursos

Pré-condição: estar na página de detalhes.

Passos: 

1. Na página de detalhes, clicar no botão/link Voltar

2. Confirmar retorno para a listagem.

3. Verificar se o estado anterior (posicionamento/filtro) foi preservado.

Resultado esperado: usuário retorna à listagem de cursos corretamente.

### Cenário: CT007 — Buscar curso existente

Pré-condição: exista curso com “QA” no título.

Passos:

1. Acessar a página de cursos.

2. No campo de busca, digitar JavaScript e confirmar (Enter ou botão).

3. Aguardar retorno e checar títulos listados.

4. Validar que pelo menos um resultado contém o termo.

Resultado esperado: exibe cursos contendo “QA”.

### Cenário: CT008 — Buscar curso inexistente

Pré-condição: termo sem correspondência (ex.: “Astrologia”).

Passos:

1. Digitar Astrologia no campo de busca e confirmar.

2. Observar a resposta.

Resultado esperado: mensagem “Nenhum resultado encontrado”.

### Cenário: CT009 — Buscar com menos de 3 caracteres

Pré-condição: regra de busca definida (mínimo 3 caracteres).

Passos:

1. Digitar QA (2 caracteres) no campo de busca.

2. Observar validação/aviso e se algum request é disparado.

Resultado esperado: aviso “Digite pelo menos 3 caracteres” ou nenhuma busca executada.

### Cenário: CT010 — Campo de busca vazio

Pré-condição: lista previamente filtrada.

Passos:

1. Limpar o campo de busca (clicar X/apagar).

2. Verificar se a listagem retorna ao estado padrão (todos os cursos).

Resultado esperado: exibição da lista completa.

### Cenário: CT011 — Inscrição bem-sucedida

Pré-condição: conta de teste com permissão para inscrição.

Passos:

1. Fazer login com conta de teste (mostrar processo no vídeo).

2. Navegar até a página de detalhes do curso.

3. Clicar em Inscrever-se e confirmar se houver modal.

4. Verificar mensagem de sucesso e/ou mudança de estado do botão.

Resultado esperado: mensagem “Inscrição realizada com sucesso” e estado atualizado (ex.: botão vira “Inscrito”).

### Cenário: CT012 — Tentar se inscrever sem login

Pré-condição: usuário deslogado

Passos: 

1. Acessar detalhe do curso em modo anônimo.

2. Clicar em Inscrever-se.

3. Observar comportamento.

Resultado esperado: redireciona para login pedindo autenticação com mensagem clara.

### Cenário: CT013 — Usuário já inscrito

Pré-condição: conta de teste já inscrita.

Passos:

1. Logar com conta já inscrita.

2. Ir para detalhe do curso; tentar clicar Inscrever-se.

3. Verificar mensagem/estado (ex.: “Você já está inscrito”).

Resultado esperado: sistema indica inscrição existente e impede duplicidade.

### Cenário: CT014 — Cancelar inscrição

Pré-condição: conta inscrita e permissão para cancelar

Passos:

1. Logar com conta inscrita.

2. Abrir área “Meus cursos” ou detalhe do curso.

3. Clicar em Cancelar inscrição e confirmar.

4. Verificar mensagem de confirmação e atualização de status.

Resultado esperado: mensagem “Inscrição cancelada com sucesso” e status atualizado.

### Cenário: CT015 — Visualizar site em dispositivo (responsividade)

Pré-condição: Chrome

Passos:

1. Minimizar a página.

2. Navegar até Cursos, abrir um detalhe e testar botões.

3. Verificar legibilidade, botões clicáveis e se imagens não extrapolam.

Resultado esperado: layout adaptado; elementos acessíveis sem sobreposição.

### Cenário: CT016 — Verificar textos alternativos (atributo alt)

Pré-condição: Inspecionar 

Passos: 

1. Acessar listagem de cursos.

2. Inspecionar cada tag <img> nos cards (clicar → Inspect).

3. Verificar atributo alt para cada imagem; listar as que estiverem vazias/ausentes.

Resultado esperado: todas as imagens com alt descritivo.

### Cenário: CT017 — Verificar tempo de carregamento (performance)

Pré-condição: rede comum; cronômetro 

Passos: 

1. Abrir Abrir cronômetro.

2.Recarregar a página (F5) três vezes.

3. Calcular média das 3 execuções.

Resultado esperado: tempo médio ≤ 3 segundos.