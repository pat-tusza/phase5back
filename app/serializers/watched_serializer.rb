class WatchedSerializer < ActiveModel::Serializer
  attributes :id, :comments
  has_one :user
  has_one :member
end
