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
Friendship.destroy_all

user1 = User.create(username: "Kurt", password: "password", image: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg")

user2 = User.create(username: "Sam", password: "password", image: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg")

user3 = User.create(username: "Zev", password: "password", image: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg")

# user2 = User.create(username: "Sam", password: "password")

chat1 = Chat.create(user1: user1, user2: user2)

# chat2 = Chat.create(user1: user1, user2: user3)

Friendship.create(user1: user1, user2: user2)

# Request.create(sender: user3, receiver: user2)

Message.create(content: "This is the first message", Chat: chat1, User: user1)

Message.create(content: "This is the second message", Chat: chat1, User: user2)

Message.create(content: "This is the third message", Chat: chat1, User: user1)

# Message.create(content: "This is the 1st message", Chat: chat2, User: user1)

# Message.create(content: "This is the 2nd message", Chat: chat2, User: user3)

# Message.create(content: "This is the 3rd message", Chat: chat2, User: user1)



