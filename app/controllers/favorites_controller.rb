class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to :back
    else
      if @favorite.favoritable_type == "article"
        @articles = Article.all
        render "users/articles/index"
      else
        #TODO: favoritable_type == "comment"の時を実装する
      end
    end
  end

  private

    def favorite_params
      params.require(:favorite).permit(:favoritable_type,:favoritable_id,:user_id,:admin_id)
    end
end
