     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software


     @cadastro_valido_exemplos
     Esquema do Cenário: Cadastrar usuário com dados válidos
     Dado que eu esteja no formulário de cadastro
     E eu preencha os campos com <nome>,<sobrenome>,<celular>,<email>,<senha>,<senha2>
     Quando clicar no botão Enviar
     Então o sistema deve redirecionar para o Dashboard
     E exibir a mensagem de confirmação <msgsucesso>
     Exemplos:
     | nome     | sobrenome  | celular       | email                 | senha            | senha2           | msgsucesso                       |
     | "Fabio"  | "Araujo"   | "1197624321"  | "fabio@teste.com.br"  | "**************" | "**************" | "Cadastro efetuado com sucesso!" |
     | "Flavio" | "Araujo"   | "11976222444" | "flavio@teste.com.br" | "**************" | "**************" | "Cadastro efetuado com sucesso!" |
     | "Felipe" | "Araujo"   | "11976222666" | "felipe@teste.com.br" | "**************" | "**************" | "Cadastro efetuado com sucesso!" |



















     # | nome        | sobrenome        | celular        | email        | senha        | senha2       | msgsucesso                       |
     # | nome_válido | sobrenome_valido | celular_valido | email_valido | senha_valida | senha_valida | "Cadastro efetuado com sucesso!" |