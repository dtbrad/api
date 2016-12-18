class BasketSerializer < ActiveModel::Serializer
  attributes :date, :total
  # , :buyer

  def buyer
    object.user.name
  end
end
