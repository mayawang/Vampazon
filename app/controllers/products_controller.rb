class ProductsController < ApplicationController
  def index
    @products = Product.all.order("name")
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id].to_i)
    # @seller = User.find(@product.user_id)
    @reviews = Review.where(:product_id => @product.id)
  end

  def by_seller_products
    @products = Product.where(:user_id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def add_order
    @myproduct = Product.find(params[:id])
    @myproduct.quantity += 1
    @myproduct += @order
    @order.save
    @myproduct.save
    redirect_to :back
  end



end
