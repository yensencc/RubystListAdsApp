class Category < ApplicationRecord
    has_many :listings
	has_many :subcategories
end
