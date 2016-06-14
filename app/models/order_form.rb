class OrderForm

  include ActiveModel::Model

  attr_accessor :user, :order #credit_cart

  def save
    if valid?
      persist
      true
    else
      false
    end
  end

  private

  def valid?
    user.valid?
  end

  def persist
    # user.save
  end
end
