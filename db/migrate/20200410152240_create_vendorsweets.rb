class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.belongs_to :vendor
      t.belongs_to :sweet

      t.timestamps
    end
  end
end
