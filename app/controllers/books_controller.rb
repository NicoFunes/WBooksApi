class BooksController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  # before_action :authorize_request
  # Muestra uno solo
  def show
    @abook = Book.find_by(id: params[:id])
    logger.debug "A book: #{@abook.title}"
  end

  # Muestra todos
  def index
    @books = Book.all
  end
end
