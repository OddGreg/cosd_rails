class CreateStoriesUsers < ActiveRecord::Migration
  def change
    create_table :stories_users do |t|
      t.belongs_to :story, index: true
      t.belongs_to :user, index: true
    end
  end
end
