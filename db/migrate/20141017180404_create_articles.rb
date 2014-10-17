class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :picture
      t.references :product

      t.timestamps
    end
    add_index :articles, :product_id
  end
end
