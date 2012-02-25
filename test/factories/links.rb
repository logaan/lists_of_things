# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    association :parent, :factory => :thing
    association :child, :factory => :thing
  end
end
