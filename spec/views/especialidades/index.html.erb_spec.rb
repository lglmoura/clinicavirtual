require 'spec_helper'

describe "especialidades/index" do
  before(:each) do
    assign(:especialidades, [
      stub_model(Especialidade,
        :descricao => "Descricao"
      ),
      stub_model(Especialidade,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of especialidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
