class CommentsController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]
    def index
        render json: Comment.all
    end

    def show
        comment = Comment.find_by_id(params[:id])
        if comment
            render json: comment
        else
            render json: {error: "Comment not found"}, status: :not_found
        end
    end

    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            render json: comment, status: :created
            
        else
        
            render json: {error: comment.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update 
        comment = Comment.find_by_id(params[:id])
        if comment
            comment.update(likes)
            render json: comment
        else
            render json: {error: 'Comment not found'}, status: :not_found
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        if comment.user == @current_user
        comment.destroy
        head :no_content
        else
        render json: { error: 'Unauthorized' }, status: :unauthorized
        end
    end

    private

    def comment_params
        params.permit(:user_id, :review_id, :comment)
    end

    def likes
      params.permit(:likes)
    end
end
