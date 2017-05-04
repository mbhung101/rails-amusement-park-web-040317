class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user
  # write associations here
end
