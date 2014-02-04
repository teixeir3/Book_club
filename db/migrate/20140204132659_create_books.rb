class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.integer :owner_id
      t.integer :genre_id, null: false

      t.timestamps
    end

    add_index :books, :genre_id
    add_index :books, :owner_id
  end
end
