class CreateUserMeta < ActiveRecord::Migration
  def change
    create_table :user_meta do |t|
      t.references :user, index: true
      t.string :pseudonym
      t.string :image
      t.string :location
      t.date :birthday
      t.string :gender

      t.timestamps
    end
  end
end
