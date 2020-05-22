class AddUserToComunas < ActiveRecord::Migration[5.2]
  def change
    add_reference :comunas, :user, foreign_key: true
  end
end
