class BooksCollectionController < ApplicationController
  before_action authorize_request

  def show
    my_book = Book.where(title: params[:title], genre: params[:genre], author: params[:author])
    if my_book
      render json: { status: 200 }
    else
      render json: { status: 455 }
    end
  end
end
