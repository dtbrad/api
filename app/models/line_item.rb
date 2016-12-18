class LineItem < ApplicationRecord
  belongs_to :basket
  belongs_to :product
  has_one :user, through: :basket

  def self.total_spent
    where(weight: nil).sum("quantity * price_cents") +
    where("weight IS NOT NULL").sum("weight * price_cents")
  end

  # def price
  #   price_cents / 100
  # end

end
