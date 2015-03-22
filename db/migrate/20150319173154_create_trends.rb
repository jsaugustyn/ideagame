class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :title
      t.text :description
      t.integer :post_count

      t.timestamps null: false
    end
  end
end
