class TrendCombination < ActiveRecord::Base
  belongs_to :post
  belongs_to :trend
end
