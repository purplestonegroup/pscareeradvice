class Post < ActiveRecord::Base

	has_attached_file :image, styles: { header: '620x200#' }

end
