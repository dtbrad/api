class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :basket_id, :quantity, :price_cents, :weight
end
