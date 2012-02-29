require 'spec_helper'

describe "medicos/new" do
  before(:each) do
    assign(:medico, stub_model(Medico,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :especialidade => nil
    ).as_new_record)
  end

  it "renders new medico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medicos_path, :method => "post" do
      assert_select "input#medico_nome", :name => "medico[nome]"
      assert_select "input#medico_endereco", :name => "medico[endereco]"
      assert_select "input#medico_telefone", :name => "medico[telefone]"
      assert_select "input#medico_especialidade", :name => "medico[especialidade]"
    end
  end
end
