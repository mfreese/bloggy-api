class PostSerializer < ActiveModel::Serializer
  attributes :title, :body
  has_one :user
  has_many :comments, include: 'comments'
end
