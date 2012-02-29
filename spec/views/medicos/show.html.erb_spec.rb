require 'spec_helper'

describe "medicos/show" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :especialidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
