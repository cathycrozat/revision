class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations
  has_one_attached :photo

  validates :name, presence: true



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
