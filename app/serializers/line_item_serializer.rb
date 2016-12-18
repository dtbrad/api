class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :basket_id, :quantity, :price_cents, :weight

  def product_name
    object.product.name
  end

end
