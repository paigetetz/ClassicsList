class BooksController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]
    def index
        render json: Book.all
    end

    def show
        book = Book.find_by_id(params[:id])
            if book
                render json: book
            else
                render json: { error: "Book not found" }, status: :not_found
            end
    end

    # def create
    #     book = Book.create(book_params)
    #         if book.valid?
    #             render json: book, status: :created
    #         else
    #             render json: {error: book.errors.full_messages}, status: :unprocessable_entity
    #         end
    # end


    private

    def book_params
        params.permit(:title, :author, :summary, :page_count, :genre, :published, :rating, :image_url)
    end
end
