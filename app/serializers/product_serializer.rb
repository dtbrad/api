class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :highest_price, :lowest_price, :qty_bought, :money_spent_on
  #  :most_expensive_product

  # def most_expensive_product
  #   Product.most_expensive_product.name
  # end

end
