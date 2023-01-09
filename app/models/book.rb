class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def index
        render json: Book.all
    end

    def show
        book = Book.find_by(params[:id])
            if book
                render json: book
            else
                render json: { error: "Book not found" }, status: :not_found
            end
    end
end
