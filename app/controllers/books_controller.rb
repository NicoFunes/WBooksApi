class BooksController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  #before_action :authorize_request

  def show
    render json: { status: :ENShow }
  end

  def index
    render json: { status: :ENindex }
  end
end
