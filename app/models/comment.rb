class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :name, :project_id
  belongs_to :project

  validates :name, :email, :body, :presence => true
  validates :project_should_be_published

  after_create :email_project_author

  def project_should_be_published
  	errors.add(:project_id, "is not published yet") 
  	if project && !project.published?
  end

  def email_project_author
  	puts "We will notify #{project.user.email}"
  end

end
