class AddMarketToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :market, :string
  end
end
