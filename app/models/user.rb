class User < ApplicationRecord

    
    
    has_many :conversations, foreign_key: :user1_id, class_name: "Chat"
    has_many :chats, through: :conversations

    has_many :conversations, foreign_key: :user2_id, class_name: "Chat"
    has_many :chats, through: :conversations

    has_many :friendships, foreign_key: :user1_id, class_name: "Friendship"
    has_many :friends, through: :friendships

    has_many :friendships, foreign_key: :user2_id, class_name: "Friendship"
    has_many :friends, through: :friendships

    has_many :posts
    has_many :comments, through: :posts


    has_many :messages

    validates :username, uniqueness: true

    # validates :password, :username, presence: true

    has_secure_password


    def friends 
         newarray = []
         Friendship.all.filter do |friendship|
            if friendship.user1 === self || friendship.user2 === self
                newarray.push(friendship)
            end
         end
        return newarray
    end

    def friends_posts
        friends_array = self.list_friends
        # byebug
        posts_array =[]
         friends_array.each do |friend|
             posts_array << friend.posts
        end
        # return posts_array + self.posts
        return posts_array

    end

    # def posts 
    #     return self.posts
    # end

    def list_friends
        newarray = []
         Friendship.all.filter do |friendship|
            if friendship.user1 === self
                newarray.push(friendship.user2)
            end
            if friendship.user2 === self 
                newarray.push(friendship.user1)
            end
         end
        return newarray
    end

    def requests 
        newarray = []
        Request.all.filter do |request|
           if request.receiver === self
               newarray.push(request)
           end
        end
       return newarray
   end

    def chats 
        array = []
        Chat.all.filter do |chat| 
            if chat.user1 === self || chat.user2 === self
                array.push(chat)
            end
        end
        return array
    end

end
