class UserDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  def full_name
    object.name + " " + object.surname
  end

  def full_address
    object.city + " " + object.street + " " + object.street_number + "/" + object.home_number
  end

end
