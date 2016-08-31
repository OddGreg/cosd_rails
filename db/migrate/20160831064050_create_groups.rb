class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.text :slug
      t.string :image
      t.boolean :enabled

      t.timestamps
    end
  end
end
