# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :thing do
    name "MyString"
    body "MyText"

    factory :thing_with_children do
      ignore do
        child_count 5
      end

      after_create do |thing, arguments|
        FactoryGirl.create_list :thing,
                                arguments.child_count,
                                :parents => [thing]
      end
    end

    factory :thing_with_parents do
      ignore do
        parent_count 5
      end

      after_create do |thing, arguments|
        FactoryGirl.create_list :thing,
                                arguments.parent_count,
                                :children => [thing]
      end
    end
  end
end
