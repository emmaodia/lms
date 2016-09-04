class Book < ActiveRecord::Base
	searchkick
	belongs_to :user
	belongs_to :category
	has_attached_file :image, styles: { medium: "400x600#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	has_many :books
end
