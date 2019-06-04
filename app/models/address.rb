class Address < ApplicationRecord
  belongs_to :user
  has_many :orders_as_billing_address, source: :orders, foreign_key: :billing_address_id
  has_many :orders_as_shipping_address, source: :orders, foreign_key: :shipping_address_id
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :street, presence: true
  validates :name, presence: true
  validates :country, presence: true
end
