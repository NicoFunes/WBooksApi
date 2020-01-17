class BooksController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  before_action :authorize_request

  def show
    @abook = Book.find_by(id: params[:id])
    logger.debug "A book: #{@abook.title}"
  end

  def index
    @books = Book.all
  end
end
