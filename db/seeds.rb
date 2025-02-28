require "faker"
require "bcrypt"

20.times do
  User.create!(
    first_name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.username,
    password_digest: BCrypt::Password.create("my password"),
  )
end

30.times do
  Post.create!(
    user_id: rand(1..5),
    content: Faker::ChuckNorris.fact,
  )
end

40.times do
  Reply.create!(
    user_id: rand(1..5),
    post_id: rand(1..10),
    content: Faker::Quote.yoda,
  )
end
