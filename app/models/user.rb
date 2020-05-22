class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :imagen
  belongs_to :comuna
  has_many :user_gustos, dependent: :destroy
  has_many :gustos, through: :user_gustos
  has_many :reviews, dependent: :destroy
end
