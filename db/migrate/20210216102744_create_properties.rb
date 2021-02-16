class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.decimal :size
      t.integer :construction_year
      t.integer :rooms
      t.decimal :rent_price
      t.string :property_type
      t.string :state_property
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
