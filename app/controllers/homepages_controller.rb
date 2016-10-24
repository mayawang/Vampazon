class HomepagesController < ApplicationController

  def index
    @product_categories = Product.uniq.pluck(:category)
  end

  def show_category
    # @product = Product.find(params[:id])

    @product_category = params[:category]
    @products_in_category = Product.where(:category => @product_category)
  end

 def show_random_photo(category)
 	@category_photo = Product.where(category: category).sample.photo_url
 end

end
