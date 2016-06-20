class OrderMailer < ActionMailer::Base
  default from: "hello@storeapp.io"

  def order_confiramtion order
    @order = order
    mail to: order.user.email, subject: "Your order (##{order.id})"
  end

  def state_cahnged order, previous_state
  	@order = order
  	@previous_state = previous_state

  	mail to: order.user.email, subject: "Your order (##{order.id}) has changed!"
  end
end