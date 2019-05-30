class Address < ApplicationRecord
  belongs_to :user
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :street, presence: true
  validates :name, presence: true
  validates :country, presence: true
end
