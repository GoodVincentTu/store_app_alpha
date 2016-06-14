class OrdersController < ApplicationController
  before_filter :initialize_cart


  def create
    @order_form = OrderForm.new(
      user: User.new(order_parmas[:user])
    )

    if @order_form.save
      redirect_to root_path, notice: "Thank you for placing the order."
    else
  	  render "carts/checkout"
  	end
  end

  private

  def order_params
    parmas.require(:order_form).permit(
      user: [:name, :email, :address, :postal_code, :city, :country, :phone]
    )
  end
end