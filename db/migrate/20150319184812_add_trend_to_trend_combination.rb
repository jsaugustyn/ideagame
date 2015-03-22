class AddTrendToTrendCombination < ActiveRecord::Migration
  def change
    add_reference :trend_combinations, :trend, index: true
  end
end
