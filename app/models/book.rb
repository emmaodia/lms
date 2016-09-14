class Book < ActiveRecord::Base
	searchkick
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks
	belongs_to :user
	belongs_to :category
	has_attached_file :image, styles: { medium: "400x600#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	has_many :books
end

# Book.import  This ensures that new books will be auto-indexed.