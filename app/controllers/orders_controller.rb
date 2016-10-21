class OrdersController < ApplicationController

  def add_orders
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    # @order_item_method = :post

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
