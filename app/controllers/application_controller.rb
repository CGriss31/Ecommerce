class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :brands

  helper_method :current_order

  def current_order

  	unless session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new(subtotal: 0)
    end
end

  def brands 
  	@brands = Product.all.pluck(:brand).uniq
  end
end
