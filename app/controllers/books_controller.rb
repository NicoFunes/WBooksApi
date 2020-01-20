class BooksController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  before_action :authorize_request

  def show
    return render :book_show, status: :ok if (@abook = find_book_with_id)

    render :error_book_not_found, status: :not_found
  end

  def index
    @books = Book.all
  end

  def find_book_with_id
    Book.find_by(id: params[:id])
  end
end
