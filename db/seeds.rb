require 'faker'


Item.all.each do |task|
  task.list_id = rand(1..2)
  task.save
end


# 2.times do
#   List.create(title: Faker::Company.bs
#     )
# end

# 10.times do
#   Item.create(description: Faker::Lorem.sentence
#     )
# end