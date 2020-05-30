class Comuna < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :locals, dependent: :nullify
end
