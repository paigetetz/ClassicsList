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
            puts "###########################"
            puts review.id
            render json: review, status: :created
            
        else
        
            render json: {error: review.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update 
        review = Review.find_by_id(params[:id])
        if review
            review.update(likes)
            render json: review
        else
            render json: {error: 'Review not found'}, status: :not_found
        end
    end

    def destroy
        # byebug
        review = Review.find(params[:id])
        if review
            review.destroy
            head :no_content
        else
            render json: { errors: 'Review not found' }, status: :not_found
        end

    end

    private

    def review_params
        params.permit(:user_id, :book_id, :headline, :commentary, :rating)
    end

    def review_update_params
        params.permit(:headline, :commentary, :rating, :user_id, :review_id)
    end

    def likes
        params.permit(:likes)
    end

end
