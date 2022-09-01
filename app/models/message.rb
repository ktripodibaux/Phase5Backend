class Message < ApplicationRecord
  belongs_to :Chat
  belongs_to :User
end
