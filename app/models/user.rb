class User < ApplicationRecord
  has_many :baskets
  has_many :line_items, through: :baskets
  has_many :products, -> { distinct },  through: :line_items
end
