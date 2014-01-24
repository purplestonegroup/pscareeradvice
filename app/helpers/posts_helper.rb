module PostsHelper

	def format(string)
		RDiscount.new(string).to_html.html_safe
	end

end
