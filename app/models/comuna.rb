class Comuna < ApplicationRecord
  has_many :users, dependent: :nullify
end
