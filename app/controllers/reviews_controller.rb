class ReviewsController < ApplicationController
  respond_to :html

  def index
    @reviews = Review.order(created_at: :desc).paginate(per_page: 20, page: params[:page])
    respond_with @reviews
  end

  def new
    @review = Review.new
    respond_with @review
  end

  def create
    @review = Review.create(review_params)
    respond_with @review
  end

  private

  def review_params
    params.require(:review).permit(:rating, :text, :book)
  end
end