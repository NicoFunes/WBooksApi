class BooksController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  before_action :authorize_request

  def show
    if !(@abook = Book.find_by(id: params[:id])).nil?
      render :show, status: 200
    else
      render :error_book_not_found, status: 404
    end
  end

  def index
    @books = Book.all
  end
end
