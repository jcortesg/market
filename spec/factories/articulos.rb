# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :articulo do
    titulo "MyString"
    abstract "MyString"
    description "MyString"
    fecha "2012-11-18"
    precio 1
    calificacion 1
    foto "MyString"
  end
end
