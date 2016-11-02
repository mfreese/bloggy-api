class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings
end
