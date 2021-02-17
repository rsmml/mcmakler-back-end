class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :address, presence: true
  validates :market, presence: true
  validates :price, presence: true
end
