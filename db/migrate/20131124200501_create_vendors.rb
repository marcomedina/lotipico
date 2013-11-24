class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string  :name
      t.text    :story
      t.string  :location
    end
  end
end
