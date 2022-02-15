class BooksAvailableController < BooksController
  def index
  end

  def index
    @books = Book.all
  end

  # GET /books/1 or /books/1.json
  def show
  end
end
