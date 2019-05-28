class Item < ApplicationRecord
  belongs_to :code
  belongs_to :user
  has_many :findings, dependent: :destroy
  validates :name, presence: true
end
