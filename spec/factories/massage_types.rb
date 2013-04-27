# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :massage_type, :class => 'MassageTypes' do
    massage_type "MyString"
  end
end
