class CreateQuantityLimits < ActiveRecord::Migration
  def change
    create_table :quantity_limits do |t|
      t.integer :product_id
      t.integer :limit, :default => 0

      t.timestamps
    end
    add_index :quantity_limits, :product_id
  end
end
