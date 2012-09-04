class User < ActiveRecord::Base
  attr_accessible :email, :password
  validates :email, :uniqueness => true, 
  					:length => { :within => 5..50 }
  					:format => { width => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }


  has_one :profile
  has_many :projects, :order =>'published_at DESC, title ASC',
  					  :dependent => :nullify
  has_many :replies, :through => :projects, :source => :comments
end
