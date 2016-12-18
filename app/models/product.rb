class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :baskets, through: :line_items
  # has_many :users, through: :baskets

  def highest_price
    line_items.order(price_cents: :desc).first.price_cents.to_f / 100
  end

  def lowest_price
    line_items.order(:price_cents).first.price_cents.to_f / 100
  end

  def self.most_expensive_product
    joins(:line_items).order("price_cents").last
  end

  def self.least_expensive_product
    joins(:line_items).order("price_cents").first
  end

  def qty_bought
    line_items.sum(:quantity)
  end

  def money_spent_on
    (LineItem.where(product: self).total_spent / 100).truncate(2)
  end

end
