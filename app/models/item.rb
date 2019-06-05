class Item < ApplicationRecord
  belongs_to :code, dependent: :destroy
  belongs_to :user
  has_many :findings, dependent: :destroy
  validates :name, presence: true
  validates :qr_number, :code_id, presence: true
  validates :category, presence: true, inclusion: { in: ["Laptop", "Phone", "Tablet", "Notepad", "Other"] }

  # called in Item
  scope :pending, ->{ includes(:findings).where(findings: { state: "pending" }) }

  # called on instance of Item
  def found_and_pending?
    findings.any? { |f| f.state == "pending" }
  end
end
