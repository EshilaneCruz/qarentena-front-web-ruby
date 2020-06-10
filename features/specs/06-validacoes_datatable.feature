     #language: pt
     @regressivo
     Funcionalidade: Validação da home
     Como um usuário do site QArentena Demo
     Quero visualizar os links de mídias sociais
     Para que eu possa me associar à QArentena em todas as plataformas

     @validacao_midias_sociais_datatable
     Cenário: Links de mídias sociais são exibidos
     Dado que estou na página inicial
     Então deve ser exibido o link para:
     | midia_social |
     | "facebook"   |
     | "twitter"    |
     | "instagram"  |