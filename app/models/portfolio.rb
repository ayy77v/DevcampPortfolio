class Portfolio < ApplicationRecord
	validates_presence_of :title, :body
	validates_presence_of :main_image, :allow_blank=>true
	validates_presence_of :thumb_image, :allow_blank=>true

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200"
	end
end
 