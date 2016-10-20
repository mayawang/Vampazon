class OrdersController < ApplicationController
  def index
    # @products = Product.all
    @orders = Order.all
  end

  def show
    @myorder = Order.find(params[:id])
    if @myorder == nil
      # render :file 'public/404.html', :status => :not_found
    end
  end

  def new
    @myorder = Order.new
    @order_method = :post
    @order_path = orders_path
  end

  def create
    @order = current_order
    @order_item = Order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
    # redirect_to order_path(@myorder.id)
  end

  def edit
    @myorder = Order.find(params[:id])
    # Should I use a patch here?
    @order_method = :put
    @order_path = album_path
    if @myorder == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end


    # @myorder = Order.find(params[:id])
    # if @myorder == nil
    #   render :file => 'public/404.html', :status => :not_found
    # end
    # @myorder.status = params[:order][:status]
    # @myorder.first_name = params[:order][:first_name]
    # @myorder.last_name = params[:order][:last_name]
    # @myorder.email = params[:order][:email]
    # @myorder.street_address = params[:order][:street_address]
    # @myorder.city = params[:order][:city]
    # @myorder.state = params[:order][:state]
    # @myorder.zip = params[:order][:zip]
    # @myorder.phone = params[:order][:phone]
    # @myorder.save
    # redirect_to orders_path(@myorder.id)
    # end

    def destroy
      @order = current_order
      @order_item = @order_items.find(params[:id])
      @order_item.destroy
      @order_items = @order.order_items
    end

    private
    def order_item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end 
end
