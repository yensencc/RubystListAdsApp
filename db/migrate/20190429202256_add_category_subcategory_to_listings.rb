class AddCategorySubcategoryToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :category_id, :integer
    add_column :listings, :subcategory_id , :integer
  end
end
