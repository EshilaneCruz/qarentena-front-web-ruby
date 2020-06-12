Então("deve exibir no topo do formulário a mensagem de erro {string}") do |msg_falha|
  expect(@cadastro_page).to have_content msg_falha
end

Então("deve exibir no campo a mensagem de erro {string}") do |msg_falha_campo|
  expect(@cadastro_page).to have_content msg_falha_campo
end

E("permanecer na página de cadastro") do
  expect(@cadastro_page).to have_current_path '/qarentena/cadastro/'
end

Dado("eu informe os campos {string},{string},{string},{string},{string},{string} conforme arquivo") do |nome, sobrenome, email, telefone, tipo_de_conta, documento|
  @cadastro_page.preencher_form_com_dados_informados(
    UserData.get(nome),
    UserData.get(sobrenome),
    UserData.get(email),
    UserData.get(telefone),
    UserData.get(tipo_de_conta),
    UserData.get(documento)
  )
end