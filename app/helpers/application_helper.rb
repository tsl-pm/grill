module ApplicationHelper
  
  def current_user
    @user ||= User.find_by_id(session[:user_id]) if logged_in?
  end
  
  def current_order
    @order ||= Order.find_by_id(session[:order_id]) if logged_in?
  end
  
end
