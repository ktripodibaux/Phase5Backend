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
Post.destroy_all
Comment.destroy_all

user1 = User.create(username: "Kurt", password: "password", image: "https://i.kym-cdn.com/photos/images/newsfeed/001/513/511/b18.png")

user2 = User.create(username: "Sam", password: "password", image: "https://miro.medium.com/max/2400/1*77FS-Zxw0vg8dUbM5jH0xw.jpeg")

user3 = User.create(username: "Zev", password: "password", image: "https://media-exp1.licdn.com/dms/image/D5635AQFJzD-f9DU0YQ/profile-framedphoto-shrink_400_400/0/1657559730683?e=1663776000&v=beta&t=dCjERh2XlsPpTYxrZruBB5Jwb8oW2DDQUmonaGpJTvA")

# user2 = User.create(username: "Sam", password: "password")

chat1 = Chat.create(user1: user1, user2: user2)

# chat2 = Chat.create(user1: user1, user2: user3)

Friendship.create(user1: user1, user2: user2)
# Friendship.create(user1: user1, user2: user3)

# Request.create(sender: user3, receiver: user2)

# Message.create(content: "This is the first message", Chat: chat1, User: user1)

# Message.create(content: "This is the second message", Chat: chat1, User: user2)

# Message.create(content: "This is the third message", Chat: chat1, User: user1)

# post1 = Post.create(title: "how to make a post", content: "this is an example of creating a post", User: user1)

# post2 = Post.create(title: "different post", content: "this is an example of creating a post", User: user3)

# Post.create(title: "different post number 3", content: "this is an example of creating a post", User: user2)

# Comment.create(content: "this post sucks", User: user1, Post: post1)

# Comment.create(content: "I like this !", User: user3, Post: post1)

# Message.create(content: "This is the 1st message", Chat: chat2, User: user1)

# Message.create(content: "This is the 2nd message", Chat: chat2, User: user3)

# Message.create(content: "This is the 3rd message", Chat: chat2, User: user1)



