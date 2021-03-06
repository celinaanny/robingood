class Code < ApplicationRecord
  has_secure_token :access_token
  belongs_to :user
  belongs_to :order, optional: true
  has_one :item

  def url
    "http://www.getrobingood.com/codes/#{access_token}"
  end

  def qrcode
    qrcode = RQRCode::QRCode.new(url)
    qrcode.as_svg.html_safe
  end
end
