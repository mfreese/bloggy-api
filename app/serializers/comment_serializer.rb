class CommentSerializer < ActiveModel::Serializer
  attributes :body

  has_one :commentable
  has_many :comments

end
