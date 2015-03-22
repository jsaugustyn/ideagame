class Post < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments	
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	has_many :trend_combinations
  	has_many :trends, through: :trend_combinations
  	accepts_nested_attributes_for :trends

  	def trend_list
		trends.map(&:title)
	end

	def trend_list=(titles)
    	self.trends = titles.split(",").map do |n|
      		Trend.where(title: n.strip).first_or_create!
    	end
  end
  
end
