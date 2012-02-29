# coding: utf-8

require 'spec_helper'

feature 'gerenciar medico' do
  before :each do
  end
  
  scenario 'incluir medico' do
        
    especialidade = FactoryGirl.create(:especialidade,:descricao => 'Cardiologista')   
   
    visit new_medico_path
    preencher_e_verificar_medico
    

  end

  scenario 'alterar medico' do #, :javascript => true do

    especialidade = FactoryGirl.create(:especialidade,:descricao => 'Cardiologista') 
    medico = FactoryGirl.create(:medico, :especialidade => especialidade)

    visit edit_medico_path(medico)

    preencher_e_verificar_medico

  end

  scenario 'Excluir medico' do #, :javascript => true do

    especialidade = FactoryGirl.create(:especialidade,:descricao => 'Cardiologista') 
    medico = FactoryGirl.create(:medico, :especialidade => especialidade)

    visit medicos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_medico

    fill_in 'Nome', :with => 'Luiz'
    fill_in 'Endereço', :with => 'Rua dos Bobos'
    fill_in 'Telefone' , :with => '123456789'
    select 'Cardiologista', :on => 'Especialidade'
        
    click_button 'Salvar'
   
   
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Endereço: Rua dos Bobos'
    page.should have_content 'Telefone: 123456789'
    page.should have_content 'Especialidade: Cardiologista'

  end
 
end
