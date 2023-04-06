class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :genre, :image_url, :actor, :user_id
end
