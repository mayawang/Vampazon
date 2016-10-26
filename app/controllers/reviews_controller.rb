class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @review = Review.new
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.find(params[:id])
    @review = Review.create(review_params)
    @review.description = params[:review][:description]
    @review.rank = params[:review][:rank]

    @review.product_id = @product.id
    @review.user_id = session[:user_id]

    if @review.save
      redirect_to show_products_path(@product.id)
    else
      render new_review_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def review_params
      params.require(:review).permit(:rating, :description)
    end



end
