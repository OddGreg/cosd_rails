class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :book, index: true
      t.string :title
      t.text :description
      t.string :slug
      t.string :image
      t.boolean :visible

      t.timestamps
    end
  end
end
