class CreateRides < ActiveRecord::Migration
  # Write your migrations here
  create_table :rides do |r|
    r.integer :user_id
    r.integer :attraction_id

    r.timestamp null: :false
  end
end
