class Tag < ApplicationRecord
  has_many :taggings
  has_many :posts, through: :taggings, source: :taggable, source_type: "Post"
  has_many :users, through: :taggings, source: :taggable, source_type: "User"

  #
  # def tagged
  #   taggings.map(&:taggable)
  # end

end
