class Gusto < ApplicationRecord
  has_many :user_gustos, dependent: :destroy
  has_many :user, through: :user_gustos
end
