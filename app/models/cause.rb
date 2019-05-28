class Cause < ApplicationRecord
  has_many :findings
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
