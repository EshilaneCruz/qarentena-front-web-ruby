     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software

     
     @cadastro_valido_faker
     Cenário: Cadastrar usuário com dados válidos
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos de um novo usuário
     Quando confirmo o cadastro
     Então o sistema deve redirecionar para o Dashboard
     E exibir a mensagem de boas vindas
     