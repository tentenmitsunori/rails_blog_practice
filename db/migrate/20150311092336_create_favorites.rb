class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :favoritable_type
      t.integer :favoritable_id
      t.references :user, index: true
      t.references :admin, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :users
    add_foreign_key :favorites, :admins
  end
end
