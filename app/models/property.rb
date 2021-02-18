class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :address, presence: true
  validates :market, presence: true
  validates :price, presence: true
end
