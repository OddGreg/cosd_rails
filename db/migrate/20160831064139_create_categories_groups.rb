class CreateCategoriesGroups < ActiveRecord::Migration
  def change
    create_table :categories_groups do |t|
      t.belongs_to :category, index: true
      t.belongs_to :group, index: true
    end
  end
end
