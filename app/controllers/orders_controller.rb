class OrdersController < ApplicationController

  def add_to_cart
    # if there is no cart_id in session, or the cart_id can not be found in database, which means this user has no cart at all, we will create a new one.

    # two possibilities that @order can be nil: 1) session[:cart_id] == nil, 2) session[:cart_id] != nil && database does not have order with the :cart_id.
    if session[:cart_id]
      @order = Order.find_by(:id => session[:cart_id].to_i)
    end

    if !@order
      @order = Order.new
      @order.status = "pending"
      # save! ensure @order is saved, if not, it will raise an exception and visibly break the program.
      @order.save!
      session[:cart_id] = @order.id
    end

    @product = Product.find(params[:product_id])
    @order_item = OrderItem.new
    @order_item.order_id = session[:cart_id]
    @order_item.quantity = params[:quantity].to_i
    @order_item.unit_price = @product.price
    @order_item.product_id = @product.id
    @order_item.save!

    redirect_to action: 'show_cart'

  end

  def show_cart
    @order_items = OrderItem.where(:order_id => session[:cart_id])
  end

  def checkout

  end

  def index

  end

  def show

  end

  def new

  end

  def create
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @order_item.id = @product.id
    @order_item.unit_price = @product.price
    @order_item.quantity = params[:quantity]
    @order_item.save

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
