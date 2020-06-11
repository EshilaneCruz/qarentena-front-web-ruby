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
  @user_data = UserData.new
  @cadastro_page.preencher_form_com_dados_informados(
    @user_data.data.nome,
    @user_data.data.sobrenome,
    @user_data.data.email,
    @user_data.data.telefone,
    @user_data.data.tipo_de_conta,
    @user_data.data.documento
  )
end