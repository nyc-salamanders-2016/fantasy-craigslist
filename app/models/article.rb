class Article < ApplicationRecord
  belongs_to :category
  before_create :generate_url

  validates :name, :description, :price, :category, presence: true

  def generate_url
    random_code = SecureRandom.hex(4)
    self.link = random_code
  end
end
