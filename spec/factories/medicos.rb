# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :medico do
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
    especialidade nil
  end
end
