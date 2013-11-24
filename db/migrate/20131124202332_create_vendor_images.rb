class CreateVendorImages < ActiveRecord::Migration
  def change
    create_table :vendor_images do |t|
      t.integer :vendor_id
      t.string  :url
    end
  end
end
