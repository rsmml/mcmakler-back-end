class RenameRentPriceToPrice < ActiveRecord::Migration[6.0]
  def change
    rename_column :properties, :rent_price, :price
  end
end
