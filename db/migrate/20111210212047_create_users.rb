class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

add_column :users, :birthday, :string
add_column :users, :phonenumber, :string


  def self.down
    drop_table :users
  end
end
