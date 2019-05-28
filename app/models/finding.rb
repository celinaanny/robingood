class Finding < ApplicationRecord
  belongs_to :cause
  belongs_to :item
  validates :address, presence: true
  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: [ "home", "found"] }
end
