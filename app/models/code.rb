class Code < ApplicationRecord
  has_secure_token :token
  belongs_to :user
  has_one :item

  def url
    "http://www.getrobingood.com/codes/#{id}"
  end

  def qrcode
    qrcode = RQRCode::QRCode.new(url)
    qrcode.as_svg
  end
end
