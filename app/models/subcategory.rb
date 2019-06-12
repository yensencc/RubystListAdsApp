class Subcategory < ApplicationRecord
    belongs_to :category, required: false
end
