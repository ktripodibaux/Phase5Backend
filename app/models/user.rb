class User < ApplicationRecord

    
    
    has_many :conversations, foreign_key: :user1_id, class_name: "Chat"
    has_many :chats, through: :conversations

    has_many :conversations, foreign_key: :user2_id, class_name: "Chat"
    has_many :chats, through: :conversations

    has_many :messages

    has_secure_password

end
