class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :title
      t.string :keyword
      t.text :body
      t.string :image_id
      t.boolean :is_deleted
      t.timestamps
    end
  end
end
