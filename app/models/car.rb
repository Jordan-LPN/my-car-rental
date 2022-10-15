class Car < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :color, presence: true
  validates :year, presence: true, numericality: true
  validates :price, presence: true, numericality: true
  # belongs_to :user

end
