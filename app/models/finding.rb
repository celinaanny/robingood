class Finding < ApplicationRecord
  belongs_to :cause
  belongs_to :item
  validates :address, presence: true
  validates :home, presence: true
end

