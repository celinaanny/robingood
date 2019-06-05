class Order < ApplicationRecord
  has_many :codes
  belongs_to :user
  belongs_to :billing_address, class_name: "Address", optional: true
  belongs_to :shipping_address, class_name: "Address", optional: true
  validates :status, inclusion: { in: ['pending', 'processed'] }
end
