class CreateTrendCombinations < ActiveRecord::Migration
  def change
    create_table :trend_combinations do |t|
      t.references :post, index: true

      t.timestamps null: false
    end
  end
end
