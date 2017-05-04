class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here
 create_table :attractions do |a|
   a.string :name
   a.integer :min_height
   a.integer :nausea_rating
   a.integer :happiness_rating
   a.integer :tickets

   a.timestamp null: :false
 end
end
