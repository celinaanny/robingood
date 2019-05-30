class Finding < ApplicationRecord
  belongs_to :cause
  belongs_to :item
  validates :address, presence: true
  monetize :amount_cents_cents
  validates :state, inclusion: { in: ['pending', 'paid', 'home'] }
end
