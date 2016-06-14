class CartsController < ApplicationController
  before_filter :initialize_cart

  def add
    @cart.add_item params[:id]
    session["cart"] = @cart.serialize
    product = Product.find params[:id]
    redirect_to :back, notice: "Added #{product.name} to cart."
  end

  def show
  end

  def checkout
    @order_form = OrderForm.new user:User.new
  end

  # def destroy
  #   @cart_item.destroy
  #   # respontd_to do |format|
  #   # 	format.html {redirect_to products_url, notice: 'Cart was successfully destroyed.'}
  #   # 	format.json {head :no_content}
  #   # end
  # end

  # private
  # def set_cart
  #   @cart_item = session["cart"].find(params[:id])
  # end
end