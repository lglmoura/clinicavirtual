require 'spec_helper'

describe "especialidades/new" do
  before(:each) do
    assign(:especialidade, stub_model(Especialidade,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new especialidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => especialidades_path, :method => "post" do
      assert_select "input#especialidade_descricao", :name => "especialidade[descricao]"
    end
  end
end
