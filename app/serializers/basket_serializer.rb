class BasketSerializer < ActiveModel::Serializer
  attributes :id, :formatted_date, :total
  has_many :line_items
  # , :buyer

  def buyer
    object.user.name
  end

  def formatted_date
    object.date.localtime.strftime("%A, %b %d %Y %l:%M %p")
  end
end
