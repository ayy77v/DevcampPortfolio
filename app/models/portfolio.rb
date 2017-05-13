class Portfolio < ApplicationRecord
	validates_presence_of :title, :body
	validates_presence_of :main_image, :allow_blank=>true
	validates_presence_of :thumb_image, :allow_blank=>true
end
 