class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.string :image
      t.boolean :enabled

      t.timestamps
    end
  end
end
