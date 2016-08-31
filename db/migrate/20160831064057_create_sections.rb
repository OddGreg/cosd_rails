class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :category, index: true
      t.string :title
      t.text :description
      t.string :image
      t.string :slug
      t.boolean :visible

      t.timestamps
    end
  end
end
