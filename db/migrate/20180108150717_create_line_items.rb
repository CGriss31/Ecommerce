class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :line_item_total

      t.timestamps
    end
  end
end
