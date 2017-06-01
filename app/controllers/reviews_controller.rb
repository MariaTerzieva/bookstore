class ReviewsController < ApplicationController
  respond_to :html

  before_action :set_book

  def index
    @reviews = @book.reviews.order(created_at: :desc).paginate(per_page: 20, page: params[:page])
    respond_with @reviews
  end

  def new
    @review = Review.new
    respond_with @review
  end

  def create
    @review = Review.create(review_params.merge(book_id: @book.id))
    respond_with @review, location: book_path(@book)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :text, :book_id)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end
end