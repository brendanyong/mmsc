class Project < ActiveRecord::Base
  attr_accessible :body, :excerpt, :location, :published_at, :title
end
