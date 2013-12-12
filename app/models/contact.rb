class Contact < ActiveRecord::Base

	# adding some validations
	validates :name, presence: true
	validates :email, presence: true
	validates :subject, presence: true
	validates :comments, presence: true

end
