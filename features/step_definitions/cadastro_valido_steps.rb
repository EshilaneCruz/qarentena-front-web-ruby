Dado('que acesso o cadastro de usuário') do
  @cadastro_page = CadastroPage.new
  @cadastro_page.load
  sleep 5
end

Dado('preencho os campos do formulário com dados válidos de pessoa física') do
  @cadastro_page.preencher_form_com_dados_validos_fixos_pf
end

Quando('confirmo o cadastro') do
  @cadastro_page.confirmar_cadastro
end

Dado("preencho os campos do formulário com dados válidos de um novo usuário pessoa física") do
  @cadastro_page.confirmar_cadastro
end

Então('o sistema deve redirecionar para o Dashboard') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('exibir a mensagem de boas vindas') do
  pending # Write code here that turns the phrase above into concrete actions
end