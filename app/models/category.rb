class Category < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :projects

  default_scope order('categories.name')
end
