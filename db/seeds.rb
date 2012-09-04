user = User.create :email => 'mary@example.com', :password => 'guessit'
Category.create [{:name=> 'Web App'},
				{:name=> 'Mobile App'},
				{:name=> 'Idea'},
				{:name=> 'Design'},
				{:name=> 'Video'},
				{:name=> 'Product'},
				{:name=> 'Web App'},
				{:name=> 'Script'},]
