     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software

     
     @cadastro_valido_fixo_pf
     Cenário: Cadastrar usuário pessoa física com dados válidos
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos de pessoa física
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de boas vindas
     