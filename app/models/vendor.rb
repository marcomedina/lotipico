class Vendor < ActiveRecord::Base
  has_many :products, class_name: 'Spree::Product'
  has_many :vendor_images

end