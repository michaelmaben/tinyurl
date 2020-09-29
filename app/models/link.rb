class Link < ApplicationRecord
  has_many :visits
  before_validation :generate_short_url

  validates :full_url, format: URI::regexp(%w[http https])
  validates :short_url, presence: true
  validates :full_url, presence: true
  validates :full_url, uniqueness: true
  validates :short_url, uniqueness: true

  private
  def generate_short_url
    self.short_url = SecureRandom.urlsafe_base64 if short_url.blank?
  end

end
