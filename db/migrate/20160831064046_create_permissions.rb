class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :group, index: true
      t.references :role, index: true
      t.string :title
      t.boolean :active
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
