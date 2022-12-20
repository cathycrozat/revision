class Flat < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

end
