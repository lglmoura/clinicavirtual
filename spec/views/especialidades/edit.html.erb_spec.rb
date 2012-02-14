require 'spec_helper'

describe "especialidades/edit" do
  before(:each) do
    @especialidade = assign(:especialidade, stub_model(Especialidade,
      :descricao => "MyString"
    ))
  end

  it "renders the edit especialidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => especialidades_path(@especialidade), :method => "post" do
      assert_select "input#especialidade_descricao", :name => "especialidade[descricao]"
    end
  end
end
