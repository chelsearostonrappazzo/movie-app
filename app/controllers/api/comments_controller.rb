class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      comment: params[:comment],
    )
  end
end
