require 'faker'

# 20.times do
#   Category.create(name: Faker::Lorem.word)
# end

Category.all.each do |c|
  10.times do
    Post.create(title: Faker::Company.name, description: Faker::Lorem.sentence, price: rand(10100)*0.01, email: Faker::Internet.email, category: c)
  end
end