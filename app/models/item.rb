class Item < ApplicationRecord
  belongs_to :code, dependent: :destroy
  belongs_to :user
  has_many :findings, dependent: :destroy
  validates :name, presence: true
end
