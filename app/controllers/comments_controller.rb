class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    product = Product.find(params[:comment][:product_id])
    product.comments.create(comment: params[:comment][:comment])
    redirect_to "/"
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/"
  end
end
