class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.string :name
      t.text :biography
      t.string :avatar
      t.text :signature
      t.string :title
      t.string :tag_line
      t.string :slug
      t.boolean :active

      t.timestamps
    end
  end
end
