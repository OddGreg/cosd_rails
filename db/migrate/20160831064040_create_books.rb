class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.boolean :active

      t.timestamps
    end
  end
end
