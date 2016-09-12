class Article < ApplicationRecord
  belongs_to :category

  validates :name, :description, :price, :category, presence: true
end
