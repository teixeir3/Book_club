class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :parent_comment_id
      t.integer :book_id, null: false, default: 0
      t.integer :genre_id, null: false, default: 0
      t.integer :user_id, null: false
      t.text :body, null: false


      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :parent_comment_id
    add_index :comments, :book_id
    add_index :comments, :genre_id
  end
end
