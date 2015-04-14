class Product < ActiveRecord::Base
	validates :title , :description , :image_url, :price , presence:true 
	validates :price , numericality:{greater_than_or_equal_to: 0.01}
	validates :title , uniqueness:true
	validates :image_url , allow_blank:true , format: { 
		with: %r{.jpg|.jpeg|.gif|.png|.bmp\Z}i,
		message: "URL must end with .jpg;.jpeg;.gif;.png"
	}
end
