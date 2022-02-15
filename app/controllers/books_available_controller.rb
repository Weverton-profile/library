class BooksAvailableController < ApplicationController
  before_action :authenticate_student!
  def index
  end

  def index
    @books = Book.all.page(params[:page]).per(9)
  end
end
