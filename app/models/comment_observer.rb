class CommentObserver < ActiveRecord::Observer
	def after_create(comment)
		puts "We will noftify the author"
	end
end
