class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :generate_codes

  has_many :codes
  has_many :items
  has_many :addresses

  def generate_codes
    3.times do
      Code.create(user: self)
    end
  end

  def send_mail_after_signup
    UserMailer.welcome.deliver_now
  end
end
