class Local < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nombre, presence: true
  has_many :reviews, dependent: :destroy
  belongs_to :comuna
  has_many :matches, dependent: :nullify
end
