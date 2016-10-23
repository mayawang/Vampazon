class OrdersController < ApplicationController

  def add_to_cart
    @product = Product.find(params[:product_id])
    @order_item = OrderItem.new
    # @order_item_method = :post

    add_orders_path(@product.id), method: :post
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
