class LoansController < ApplicationController
    before_action :set_loan, only: %i[ show edit update destroy ]
    def index
        @loans = Loan.all
    end

    def new
        @loan = Loan.new
    end

    def create
        @loan = Loan.new(loan_params) 

        if @loan.save
            redirect_to profile_index_path, notice: 'Emprestimo realizado com sucesso!'
        else
            render file: "#{Rails.root}/public/404.html" , status: :not_found
        end
    end

    def destroy
        @loan.destroy
        redirect_to books_available_index_path, notice: "Livro devolvido"
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_params
        params.permit(:student_id, :book_id)
    end
end
