class BasketSerializer < ActiveModel::Serializer
  attributes :date, :total
  has_many :line_items
  # , :buyer

  def buyer
    object.user.name
  end
end
