class Profile < ActiveRecord::Base
  attr_accessible :bio, :birthday, :color, :github, :name, :twitter, :user_id
  belongs_to :user
end
