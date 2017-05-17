class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, 
								   reject_if: lambda {|attrs| attrs['name'].blank?} 

	include Placeholder
	validates_presence_of :title, :body
	validates_presence_of :main_image, :allow_blank=>true
	validates_presence_of :thumb_image, :allow_blank=>true

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end
 