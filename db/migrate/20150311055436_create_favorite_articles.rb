class CreateFavoriteArticles < ActiveRecord::Migration
  def change
    create_table :favorite_articles do |t|
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorite_articles, :users
    add_foreign_key :favorite_articles, :articles
  end
end
