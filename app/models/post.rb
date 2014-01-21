class Post < ActiveRecord::Base

	belongs_to :category

	has_attached_file :image, styles: { header: '620x200#' }

	# It returns the Posts whose titles contain one or more words that form the query
	def self.search(query)
	    # where(:title, query) -> This would return an exact match of the query
	    where("title like ?", "%#{query}%") 
	end

end
