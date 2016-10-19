class ProductsController < ApplicationController
  def index_products
    @products = Product.all.order("name")
  end

  def show_products
    @product = Product.find(pramas[:id].to_i)
    @seller = User.find(@product.user_id)
    @reviews = Review.select(@product.id)

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
end
