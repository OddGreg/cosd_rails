class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.references :category, index: true
      t.references :story, index: true
      t.string :title
      t.text :description
      t.string :image
      t.string :slug
      t.boolean :active

      t.timestamps
    end
  end
end
