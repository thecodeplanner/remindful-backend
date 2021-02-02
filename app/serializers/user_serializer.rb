class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image, :username

  has_many :days
end
