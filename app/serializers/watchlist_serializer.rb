class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :member_id
end
