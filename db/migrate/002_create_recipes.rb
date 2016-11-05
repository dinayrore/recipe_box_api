#
class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :ingredients
      t.string :image
      t.integer :yield
      t.string :instructions
    end
  end
end
