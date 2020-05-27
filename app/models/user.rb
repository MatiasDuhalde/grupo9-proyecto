class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :imagen

  has_many :liker_matches, class_name: "Match", foreign_key: "liker_id"
  has_many :liked_matches, class_name: "Match", foreign_key: "liked_id"



end
