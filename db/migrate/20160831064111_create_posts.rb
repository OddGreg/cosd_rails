class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.references :story, index: true
      t.string :title
      t.text :body
      t.string :image
      t.string :slug
      t.boolean :visible
      t.string :poster_ip

      t.timestamps
    end
  end
end
