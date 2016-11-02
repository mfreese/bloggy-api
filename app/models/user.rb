class User < ApplicationRecord

  has_secure_password
  has_secure_token :api_token

  validates :email, presence: true

  has_many :posts
  has_many :comments, as: :commentable
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

end
