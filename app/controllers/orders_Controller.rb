class OrdersController < ApplicationController
def create 
@order = Order.new (order_params)
if @order.save
    OrderMailer.with(order: @order).new_order_email.deliver_later
    flash[:success] = "Thank you foryour order! We 'll contact you soon!"
else 
    flash.now[:error] = "Your order form had an issues. Please the form again  and submit "
end
end 
end