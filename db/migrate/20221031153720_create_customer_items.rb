class CreateCustomerItems < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_items do |t|
      t.references :customers, foreign_key: true
      t.references :items, foreign_key: true

      t.timestamps
    end
  end
end
