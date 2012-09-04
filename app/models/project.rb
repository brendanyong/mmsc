class Project < ActiveRecord::Base
  attr_accessible :body, :excerpt, :location, :published_at, :title
  validates :title, :presence => true
  validates :body, :presence =>true
  validates :excerpt, :presence =>true
  validates :location, :presence =>true

  def long_title
  	"#{title} - #{published_at}"
  end
end
