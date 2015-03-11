class DropTableFavoriteArticle < ActiveRecord::Migration
  def change
    drop_table :favorite_articles
  end
end
