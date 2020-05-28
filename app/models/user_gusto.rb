class UserGusto < ApplicationRecord
  belongs_to :user
  belongs_to :gusto
end
