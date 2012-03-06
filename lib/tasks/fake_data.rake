namespace :fake do
  desc "Load a movies thing with a bunch of fake data"
  task :movies => :environment do
    FactoryGirl.create(:thing,
      :name => "Movies",
      :body => "As I watch too many movies too have a favorite I have compiled a list of all my favorites.",
      :children => [
        FactoryGirl.create(:thing, :name => "In Brouge"),
        FactoryGirl.create(:thing, :name => "Inception"),
        FactoryGirl.create(:thing, :name => "Star Wars", :children => [
          FactoryGirl.create(:thing, :name => "Return of the Jedi"),
          FactoryGirl.create(:thing, :name => "The Empire Strikes Back"),
          FactoryGirl.create(:thing, :name => "A New Hope"),
          FactoryGirl.create(:thing, :name => "Attack of the Clones"),
          FactoryGirl.create(:thing, :name => "Revenge of the Sith"),
          FactoryGirl.create(:thing, :name => "The Clone Wars")
        ]),
        FactoryGirl.create(:thing, :name => "Never let me go"),
        FactoryGirl.create(:thing, :name => "Clerks"),
      ]
    )
  end

  desc "Load a hundred thousand deep tree"
  task :deep => :environment do
    100.times do |count|
      puts count
      FactoryGirl.create(:thing,
        :name => "Deep thing",
        :parents => [Thing.last]
      )
    end
  end
end
