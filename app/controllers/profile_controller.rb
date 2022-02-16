class ProfileController < ApplicationController
  def index
    @loan = Loan.all
    @books = Book.all
    @students = Student.all
  end
end
