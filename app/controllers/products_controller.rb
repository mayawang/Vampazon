class ProductsController < ApplicationController
  def index_products
    @products = Product.all.order("name")
  end

  def show_products
    
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
