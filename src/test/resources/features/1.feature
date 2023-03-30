#language:pt
#noinspection SpellCheckingInspection

Funcionalidade:
  Como Usuário Gestor de Negocio
  Desejo enviar uma arquivo csv
  Para informar o consumo diario d credito por operadora


  Cenario: Apresentar tela Upload de Consumo diario Por Operadora
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    Entao a tela Upload de Consumo diario Por Operadora sera apresentada


  # FOR para verificar a mudança de status
  Esquema do Cenario: Enviar arquivo por Operadora
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo
    E o sistema processa o arquivo
    E o popup de Arquivo enviado com sucesso e apresentado em tela
    Entao o status Processamento realizado com sucesso e apresentado na coluna Status <status>

    Exemplos:
      | operadora | status                              |
      | Algar     | Processamento realizado com sucesso |
      | Claro     | Processamento realizado com sucesso |
      | Oi        | Processamento realizado com sucesso |


  Esquema do Cenario: Validação da mensagem Processamento com erros em tela por Operadora - RN1
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo com erros
    E o sistema processa o arquivo
    Entao o status Processamento com erros e apresentado em tela <status>

    Exemplos:
      | operadora | status                  |
      | Algar     | Processamento com erros |
      | Claro     | Processamento com erros |
      | Oi        | Processamento com erros |


  #FILTRO POR STATUS

  Esquema do Cenario: Filtrar lista por status - Algar
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo status
    E escolher o status Processamento realizado com sucesso
    Entao o sistema retorna a listagem com arquivos com status Processamento realizado com sucesso <status>

    Exemplos:
      | operadora | status                              |
      | Algar     | Processamento realizado com sucesso |
      | Algar     | Aguardando processamento            |
      | Algar     | Processamento com erros             |
      | Algar     | Arquivo com erros                   |
      | Algar     | Todos os status                     |


  #pegar 1 linha como amostra
  Esquema do Cenario: Filtrar lista por status - Claro
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo status
    E escolher o status Processamento realizado com sucesso
    Entao o sistema retorna a listagem com arquivos com status Processamento realizado com sucesso <status>

    Exemplos:
      | operadora | status                              |
      | Claro     | Processamento realizado com sucesso |
      | Claro     | Aguardando processamento            |
      | Claro     | Processamento com erros             |
      | Claro     | Arquivo com erros                   |
      | Claro     | Todos os status                     |


  #pegar 1 linha como amostra
  Esquema do Cenario: Filtrar lista por status - Oi
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo status
    E escolher o status Processamento realizado com sucesso
    Entao o sistema retorna a listagem com arquivos com status Processamento realizado com sucesso <status>

    Exemplos:
      | operadora | status                           |
      | Oi     | Processamento realizado com sucesso |
      | Oi     | Aguardando processamento            |
      | Oi     | Processamento com erros             |
      | Oi     | Arquivo com erros                   |
      | Oi     | Todos os status                     |



    #FILTROS POR PERÍODO

  Esquema do Cenario: Filtrar lista por Períodos - Algar
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo periodo
    E escolher o status <status>
    Entao o sistema retorna a listagem com arquivos com o filtro aplicado

    Exemplos:
      | operadora | status            |
      | Algar     | Ultimos 7 dias    |
      | Algar     | Ultimos 15 dias   |
      | Algar     | Ultimos 30 dias   |
      | Algar     | Todos os periodos |


  Esquema do Cenario: Filtrar lista por Períodos - Claro
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo periodo
    E escolher o status <status>
    Entao o sistema retorna a listagem com arquivos com o filtro aplicado

    Exemplos:
      | operadora | status            |
      | Claro     | Ultimos 7 dias    |
      | Claro     | Ultimos 15 dias   |
      | Claro     | Ultimos 30 dias   |
      | Claro     | Todos os periodos |



  Esquema do Cenario: Filtrar lista por Períodos - Oi
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no combobox Filtrar pelo periodo
    E escolher o status <status>
    Entao o sistema retorna a listagem com arquivos com o filtro aplicado

    Exemplos:
      | operadora | status            |
      | Oi        | Ultimos 7 dias    |
      | Oi        | Ultimos 15 dias   |
      | Oi        | Ultimos 30 dias   |
      | Oi        | Todos os periodos |


  #verificar criação de critério de aceitação
  Cenario: Baixar modelo de arquivo


  Cenario: Ver protocolo
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora Algar
    E na listagem do historico de Envios clica no botao Ver Protocolo
    Entao a modal com o numero do protocolo e apresentado em tela


  Cenario: Copiar numero de protocolo
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora Algar
    E na listagem do historico de Envios clica no botao Ver Protocolo
    E a modal com o numero do protocolo e apresentado em tela
    E clicado no botao Copiar
    Entao o sistema apresenta a mensagem de Copiado com sucesso


  Esquema do Cenario: Visualizar relatório de erros
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no icone para acesso ao Relatorio de erros
    Entao a tela do Relatorio de erros e apresentada

    Exemplos:
      | operadora |
      | Algar     |
      | Claro     |
      | Oi        |


  Cenario: Baixar Arquivo com Erros
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no icone para acesso ao Relatorio de erros
    E a tela do Relatorio de erros e apresentada
    E clicado no botao Baixar Arquivo com Erros
    Entao o sistema realiza o download do Arquivo com Erros


  Cenario: Fazer download dos dados em CSV
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no icone para acesso ao Relatorio de erros
    E a tela do Relatorio de erros e apresentada
    E clicado no icone de download
    Entao o sistema realiza o download dos dados em CSV


  #VALIDAÇÃO DAS MENSAGENS DA HISTÓRIA
  Esquema do Cenario: Popup - Não foi possível concluir o upload
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo com extensao diferente de CSV
    E o sistema processa o arquivo
    E o popup de Status do upload e apresentado em tela
    Entao a mensagem de que nao foi possível concluir o upload e apresentada no popup <mensagem>

    Exemplos:
      | operadora  | mensagem                                                                          |
      | Algar      | Não foi possível concluir o upload, deve ser anexado um arquivo de extensão .csv. |
      | Claro      | Não foi possível concluir o upload, deve ser anexado um arquivo de extensão .csv. |
      | Oi         | Não foi possível concluir o upload, deve ser anexado um arquivo de extensão .csv. |


  Esquema do Cenario: O arquivo deve respeitar a estrutura definida pela RNP
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo com erros estrururais
    E o sistema processa o arquivo com erros
    E clicado no icone para acesso ao Relatorio de erros
    Entao a mensagem O arquivo deve respeitar a estrutura definida pela RNP e apresentada em tela <mensagem>

    Exemplos:
      | operadora  | mensagem                                                                                                     |
      | Algar      | O arquivo deve respeitar a estrutura definida pela RNP. Baixe o modelo de arquivo em “Baixar modelo tabela”. |
      | Claro      | O arquivo deve respeitar a estrutura definida pela RNP. Baixe o modelo de arquivo em “Baixar modelo tabela”. |
      | Oi         | O arquivo deve respeitar a estrutura definida pela RNP. Baixe o modelo de arquivo em “Baixar modelo tabela”. |


  Esquema do Cenario: O campo Total de registros deve estar preenchido
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo com o campo Total de registros nao preenchido
    E o sistema processa o arquivo com erros
    E clicado no icone para acesso ao Relatorio de erros
    Entao a mensagem <nomedocampo> e apresentada em tela

    Exemplos:
      | operadora  | nomedocampo                                       |
      | Algar      | O campo Total de registros deve estar preenchido  |
      | Claro      | O campo Total de registros deve estar preenchido  |
      | Oi         | O campo Total de registros deve estar preenchido  |


  Esquema do Cenario: O campo número o telefone deve estar preenchido
    Dado que o usuario seja Gestor
    Quando selecionado Upload de Consumo diario Por Operadora no menu lateral
    E a tela Upload de Consumo diario Por Operadora sera apresentada
    E clicado no combobox
    E selecionado a operadora <operadora>
    E clicado no botao Escolher arquivos
    E realizado o upload do arquivo com o campo Numero de Telefone nao preenchido
    E o sistema processa o arquivo com erros
    E clicado no icone para acesso ao Relatorio de erros
    Entao a mensagem <nomedocampo> e apresentada em tela

    Exemplos:
      | operadora  | nomedocampo                                       |
      | Algar      | O campo numero de telefone deve estar preenchido  |
      | Claro      | O campo numero de telefone deve estar preenchido  |
      | Oi         | O campo numero de telefone deve estar preenchido  |

