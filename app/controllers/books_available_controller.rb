class BooksAvailableController < ApplicationController
  def index
  end

  def index
    @books = Book.all
  end
end
