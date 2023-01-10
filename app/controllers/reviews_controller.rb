class ReviewsController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]
    def index
        render json: Review.all
    end

    def create
        review = Review.create(review_params)
            if review.valid?
                render json: review, status: :created
            else
                render json: {error: review.errors.full_messages}, status: :unprocessable_entity
            end
    end

    private

    def review_params
        params.permit(:user_id, :book_id, :headline, :commentary, :rating, :likes)
    end
end
