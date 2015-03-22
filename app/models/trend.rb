class Trend < ActiveRecord::Base
	has_many :trend_combinations
	has_many :posts, through: :trend_combinations
end
