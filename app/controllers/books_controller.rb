class BooksController < ApplicationController
  respond_to :html, :js

  before_action :set_book, only: :show

  def index
    @books = Book.search(params[:search]).order(created_at: :desc).paginate(per_page: 20, page: params[:page])
    respond_with @books
  end

  def show
    respond_with @book
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end