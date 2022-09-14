class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :Comments, :created_at
  has_one :User
end
