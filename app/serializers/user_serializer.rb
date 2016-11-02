class UserSerializer < ActiveModel::Serializer
  attributes :name, :bio, :email, :created_at

  def name
    object.name.upcase
  end

  has_many :posts
  has_many :comments
end
