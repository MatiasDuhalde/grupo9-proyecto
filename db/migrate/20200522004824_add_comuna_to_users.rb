class AddComunaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :comuna, foreign_key: true
  end
end
