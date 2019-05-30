class Item < ApplicationRecord
  belongs_to :code, dependent: :destroy
  belongs_to :user
  has_many :findings, dependent: :destroy
  validates :name, presence: true
  validates :qr_number, presence: true
  validates :category, presence: true, inclusion: { in: ["Laptop", "Phone", "Tablet", "Notepad", "Other"] }
end
