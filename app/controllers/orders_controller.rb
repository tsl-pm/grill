class OrdersController < ApplicationController

  # TODO: Dry up this filter with the identical one in OrderItemsController.
  
  before_filter :require_order
  
  def require_order
    if session[:order_id]
      @order = Order.find(session[:order_id])
    else
      redirect_to root_url, notice: 'Please login first' 
    end
  end

  def edit
  end

  def update
    # This action is called when the user wants to checkout.
    
    @order.paid = true
    if @order.save
      # Find out who's logged in
      user = User.find(session[:user_id])
      
      # Create a new, empty order 
      session[:order_id] = user.orders.create.id
      
      redirect_to root_url, notice: "Thanks for your order!"
    else
      redirect_to root_url, "Something is up with your order."
    end
    
  end

  def destroy
  end
end
