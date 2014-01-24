require 'faker'


2.times do
  List.create(title: Faker::Company.bs
    )
end

10.times do
  Item.create(description: Faker::Lorem.sentence
    )
end