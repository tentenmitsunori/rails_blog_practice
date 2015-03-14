class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(favorite_params)
    if favorite.save
      redirect_to(:back)
    else
    end
  end

  private

    def favorite_params
      params.require(:favorite).permit(:favoritable_type,:favoritable_id,:user_id,:admin_id)
    end
end
