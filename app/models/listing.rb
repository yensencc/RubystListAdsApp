class Listing < ApplicationRecord
	has_attached_file :image #styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>"}
	has_attached_file :image1
has_attached_file :image2
has_attached_file :image3
has_attached_file :image4
has_attached_file :image5
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    belongs_to :category, required: false
	belongs_to :subcategory, required: false
	belongs_to :user
	validates :user_id, presence: true
	validates_presence_of :user_id
	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :city
	validates_presence_of :state
	geocoded_by :full_address
	after_validation :geocode
	
	def full_address
	    [city,state,zipcode].join(', ')
	end
	
	def self.search(params)
	    listings = Listing.where(category_id: params[:category].to_i)
	    listings = listings.where("title LIKE ? or description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
	    listings = listings.near(params[:location], 20) if params[:location].present?
	    listings
    end

end
