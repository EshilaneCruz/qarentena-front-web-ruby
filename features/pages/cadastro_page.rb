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

  def preencher_form_com_dados_validos_fixos_pf
    cmp_nome.set 'Eshilane'
    cmp_sobrenome.set 'Cruz'
    cmp_email.set 'eshi.mcruz@gmail.com'
    cmp_celular.set '51981255168'
    rd_cpf.set true
    cmp_documento.set '61907965084'
  end

  def confirmar_cadastro
    btn_enviar.click
    sleep 300
  end
end
