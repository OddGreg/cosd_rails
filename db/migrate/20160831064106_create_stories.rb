class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :section, index: true
      t.references :user, index: true
      t.string :title
      t.text :description
      t.string :slug
      t.boolean :active

      t.timestamps
    end
  end
end
