class OrderMailer < ActionMailer::Base
  default from: "hello@storeapp.io"

  def order_confiramtion order
    @order = order
    mail to: order.user.email, subject: "Your order (##{order.id})"
  end

end