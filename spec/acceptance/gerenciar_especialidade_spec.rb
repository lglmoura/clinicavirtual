# coding: utf-8

require 'spec_helper'

feature 'gerenciar especialidade' do
  before :each do
  end
  
  scenario 'incluir especialidade' do
    visit new_especialidade_path
    
    fill_in 'Descrição', :with => 'Cardiologista'
        
    click_button 'Salvar'
   
    page.should have_content 'Descrição: Cardiologista'
  end

 
end