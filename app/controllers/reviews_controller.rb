class ReviewsController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]
    def index
        render json: Review.all
    end

    def show
        review = Review.find_by_id(params[:id])
            if review
                render json: review
            else
                render json: {error: "Review not found"}, status: :not_found
            end
    end

    def create
        review = Review.create(review_params)
            if review.valid?
                render json: review, status: :created
            else
                render json: {error: review.errors.full_messages}, status: :unprocessable_entity
            end
    end

    def update
        review = Review.find_by_id(params[:id])
            if review
                review.update(review_update_params)
                render json: review, status: :ok
            else
                render json: {error: "Review not found"}, status: :not_found
            end
    end

    def destroy
        review = Review.find_by_id(params[:id])
            if review
                review.destroy
                head :no_content
            else
                render json: {error: "Review not found"}, status: :not_found
            end
    end

    private

    def review_params
        params.permit(:user_id, :book_id, :headline, :commentary, :rating, :likes)
    end

    def review_update_params
        params.permit(:headline, :commentary, :rating)
    end

end
