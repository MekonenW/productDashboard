class Product < ApplicationRecord
	has_many :comments
	belongs_to :category
	validates :name, :description, :pricing,  presence: true
end
