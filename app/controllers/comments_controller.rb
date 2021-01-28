class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]


# create comments
  def create
  @article = Article.find(params[:article_id])
  @comment = @article.comments.create(comment_params)
  redirect_to article_path(@article)
end
# destroy comments
def destroy
   @article = Article.find(params[:article_id])
   @comment = @article.comments.find(params[:id])
   @comment.destroy
   redirect_to article_path(@article)
 end

private #only visible to the author
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
