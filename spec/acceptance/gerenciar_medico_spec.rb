# coding: utf-8

require 'spec_helper'

feature 'gerenciar medico' do
  before :each do
  end
  
  scenario 'incluir especialidade' do
    visit new_medico_path
    
    especialidade = FactoryGirl.create(:especialidade,:descricao => 'Cardiologista')   

    fill_in 'Nome', :with => 'Luiz'
    fill_in 'Endereço', :with => 'Rua dos Bobos'
    fill_in 'Telefone' , :with => '123456789'
    select 'Cardiologista', :on => 'Especialidade'
        
    click_button 'Salvar'
   
   
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Endereço: Rua dos Bobos'
    page.should have_content 'Telefone : 123456789'
    page.should have_content 'Especialidade: Cardiologista'

  end

 
end
