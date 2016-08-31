class CreateCharactersPosts < ActiveRecord::Migration
  def change
    create_table :characters_posts do |t|
      t.belongs_to :character, index: true
      t.belongs_to :post, index: true
    end
  end
end
