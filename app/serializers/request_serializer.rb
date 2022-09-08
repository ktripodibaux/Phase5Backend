class RequestSerializer < ActiveModel::Serializer
  attributes :id, :receiver, :sender
end
