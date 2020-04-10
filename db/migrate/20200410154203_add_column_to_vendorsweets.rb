class AddColumnToVendorsweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendorsweets, :price, :integer
  end
end
