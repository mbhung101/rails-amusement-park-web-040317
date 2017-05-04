class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  create_table :users do |u|
    u.string :name
    u.string :password
    u.integer :happiness
    u.integer :nausea
    u.integer :height
    u.integer :tickets
    u.boolean :admin, :default => false
    u.timestamps null: :false
  end
end
