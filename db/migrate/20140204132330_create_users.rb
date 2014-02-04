class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :pseudonym
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :token, null: false
      t.boolean :admin, null: false, default: false

      t.timestamps
    end

    add_index :users, :username, unique: true
  end
end
