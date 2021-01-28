class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "user", password: "chicken", except: [:index, :show]


  def index #make index for articles, link to app/views/articles/index.html.erb
     @articles = Article.all
   end

  def show #show article, link to app/views/articles/show.html.erb
      @article = Article.find(params[:id])
    end

  def new #new method, link to app/views/articles/edit.html.erb
    @article = Article.new
  end

  def edit #edit article
    @article = Article.find(params[:id])
  end


  def create #create new article, update and save
    @article = Article.new(article_params)
    @article.user = User.first
  if  @article.save #save article
    redirect_to articles_path
  else
    render 'new' #use render to let @article back to new template
  end
end

def update  #update article
  @article = Article.find(params[:id])

  if @article.update(article_params)
    redirect_to articles_path
  else
    render 'edit'  #use render to let @article back to new template
  end
end

def destroy #delete article
  @article = Article.find(params[:id])
  @article.destroy
  redirect_to articles_path
end

  private #only visible to the author
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
