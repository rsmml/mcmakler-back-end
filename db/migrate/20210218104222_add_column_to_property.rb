class AddColumnToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :photo, :string
  end
end
