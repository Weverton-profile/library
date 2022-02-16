class ProfileController < ApplicationController
  before_action :authenticate_student!
  def index
    @loan = Loan.all
    @books = Book.all
    @students = Student.all
  end
end
