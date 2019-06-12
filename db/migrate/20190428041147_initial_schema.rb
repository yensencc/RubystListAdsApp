class InitialSchema < ActiveRecord::Migration[5.0]
  def change
    
    create_table :listings do |t|
      t.string  :title
      t.text    :description
      t.string  :city
      t.string  :state
      t.string  :zipcode
      t.timestamps
    end
    
    create_table :categories do |t|
      t.string   :name
    end
    
    create_table :subcategories do |t|
      t.string   :name
      t.integer  :category_id
    end
    
  end
end
