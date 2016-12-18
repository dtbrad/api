class Basket < ApplicationRecord
  # belongs_to :user
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  def total
    (line_items.total_spent / 100).truncate(2)
  end

end
