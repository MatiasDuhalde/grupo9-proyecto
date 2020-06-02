class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nombre, presence: true
  validates :edad, numericality: true
  validates :telefono, length: { maximum: 12 }

  has_one_attached :imagen
  belongs_to :comuna
  has_many :user_gustos, dependent: :destroy
  has_many :gustos, through: :user_gustos
  has_many :reviews, dependent: :destroy
  has_many :liker_matches, class_name: "Match", foreign_key: "liker_id", dependent: :destroy,
                           inverse_of: :liker
  has_many :liked_matches, class_name: "Match", foreign_key: "liked_id", dependent: :destroy,
                           inverse_of: :liked
end
