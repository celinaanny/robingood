class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :generate_codes, :send_mail_after_signup

  has_many :codes
  has_many :items
  has_many :addresses

  def generate_codes
    order = Order.create(user: self)
    3.times do
      Code.create(user: self, order: order)
    end
  end

  def send_mail_after_signup
    UserMailer.with(user: self).welcome.deliver_now
  end

  def pending_findings?
    items.any? { |i| i.found_and_pending? }
  end

  def pending_findings
    items.includes(:findings).where(findings: { state: "pending" })
  end
end
