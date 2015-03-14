class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to :back
    else
      @favoritable_type =  @favorite.favoritable_type 
      set_elements
      render "users/articles/index"
    end
  end

  private

    def favorite_params
      params.require(:favorite).permit(:favoritable_type,:favoritable_id,:user_id,:admin_id)
    end

    def set_elements
      if @favoritable_type == "article"
        @articles = Article.all
      end
    end
end
