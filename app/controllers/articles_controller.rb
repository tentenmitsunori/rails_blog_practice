class ArticlesController < ApplicationController
  before_action :set_article,only:[:show]
  def show
  end

  def new
    @article = Article.new
  end 

  private 
  def set_article
    @article = article.find(id: params[:id])
  end 
end
