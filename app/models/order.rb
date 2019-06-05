class Order < ApplicationRecord
  has_many :codes
  belongs_to :user
  belongs_to :billing_address, class_name: "Address"
  belongs_to :shipping_address, class_name: "Address"
end
