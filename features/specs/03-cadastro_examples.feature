     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software


     @cadastro_valido_exemplos
     Esquema do Cenário: Cadastrar usuário com dados válidos
     Dado que acesso o cadastro de usuário
     E eu preencha os campos com <nome>,<sobrenome>,<email>,<celular>,<tipo_de_conta>,<documento>
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de confirmação <msgsucesso>
     Exemplos:
     | nome     | sobrenome   | email                 | celular       | tipo_de_conta    | documento        | msgsucesso                       |
     | "Fabio"  | "Araujo"    | "fabio@teste.com.br"  | "1197624321"  | "pf"             | "81278804005"    | "Cadastro efetuado com sucesso. Obrigado!" |
     | "Flavio" | "Araujo"    | "flavio@teste.com.br" | "11976222444" | "pf"             | "14854676086"    | "Cadastro efetuado com sucesso. Obrigado!" |
     | "Felipe" | "Araujo"    | "felipe@teste.com.br" | "11976222666" | "pj"             | "05474244000120" | "Cadastro efetuado com sucesso. Obrigado!" |