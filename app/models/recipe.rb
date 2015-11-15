class Recipe < ActiveRecord::Base
	validates :name, presence:true, length:{minimum: 2}
	validates :category, presence:true, length:{minimum: 3}
	validates :instructions, presence:true
	validates :minutes_to_prepare, presence:true, numericality: {greater_than: 0}
	validates :minutes_to_cook, presence:true, numericality: {greater_than: 0}

	mount_uploader :image, ImageUploader

	def minutes_total 
		minutes_to_prepare + minutes_to_cook
	end
end
