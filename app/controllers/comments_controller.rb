class CommentsController < ApplicationController
  
  def create
    comment = Comment.new(comment_params)
    if comment.save
        flash[:notice] = 'コメントを投稿しました!'
        redirect_to comment.post
    else
      flash[:notice] = '名前とコメントを入力してください'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      redirect_to comment.post, flash: { notice: 'コメントが削除されました' }
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :name, :comment)
  end

end