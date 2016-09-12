class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :price, null: false
      t.string :link, null: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
