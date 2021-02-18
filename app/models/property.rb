class Property < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :market, presence: true
  validates :price, presence: true
end
