class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.jsonb :properties, default: {}
      t.belongs_to :product_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
