# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Chat.destroy_all
Message.destroy_all

user1 = User.create(username: "Kurt", password: "password")

user2 = User.create(username: "Sam", password: "password")

chat1 = Chat.create(user1: user1, user2: user2)

Message.create(content: "This is the first message", Chat: chat1, User: user1)

Message.create(content: "This is the second message", Chat: chat1, User: user2)

Message.create(content: "This is the third message", Chat: chat1, User: user1)



