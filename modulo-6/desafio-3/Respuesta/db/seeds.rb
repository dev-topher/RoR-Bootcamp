# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Genera 25 usuarios

##require 'faker'

25.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

users = User.all

# Genera 20 posts asociados a usuarios aleatorios y si el rand es 1 guarda la reacción del usuario

20.times do
  post = Post.create!(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user: users.sample
  )

  users.each do |user|
    reaccion = rand(0..1)
    if reaccion == 1
      Reaction.create!(
        user: user,
        post: post
      )
    end
  end
end
