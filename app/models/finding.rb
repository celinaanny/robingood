class Finding < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :cause
  belongs_to :item
  validates :address, presence: true
end
