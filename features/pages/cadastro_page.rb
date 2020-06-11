class CadastroPage < SitePrism::Page
  set_url '/cadastro'
  element :cmp_nome, '#field_nome'
  element :cmp_sobrenome, '#field_sobrenome'
  element :cmp_celular, '#field_telefone'
  element :cmp_email, '#field_email'
  element :rd_cpf, '#field_conta-0'
  element :rd_cnpj, '#field_conta-1'
  element :cmp_documento, '#field_documento'
  element :btn_enviar, '.frm_button_submit'
  element :msg_sucesso, '.frm_message'

  def preencher_form_com_dados_validos_fixos_pf
    cmp_nome.set 'Eshilane'
    cmp_sobrenome.set 'Cruz'
    cmp_email.set 'eshi.mcruz@gmail.com'
    cmp_celular.set '51981255168'
    rd_cpf.set true
    cmp_documento.set '61907965084'
  end

  def preencher_form_com_dados_aleatorios_pf
    cmp_nome.set Faker::Name.first_name
    cmp_sobrenome.set Faker::Name.last_name
    cmp_email.set Faker::Internet.email(domain: 'viavarejo')
    cmp_celular.set Faker::Base.numerify('119########')
    rd_cpf.set true
    cmp_documento.set Faker::CPF.numeric
  end

  def preencher_form_com_dados_informados(nome, sobrenome, email, celular, tipo_de_conta, documento)
    cmp_nome.set nome
    cmp_sobrenome.set sobrenome
    cmp_email.set email
    cmp_celular.set celular
    if tipo_de_conta == 'pf'
      rd_cpf.set true
    elsif tipo_de_conta == 'pj'
      rd_cnpj.set true
    end
    cmp_documento.set documento
  end

  def confirmar_cadastro
    btn_enviar.click
  end
end
