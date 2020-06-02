class AddComunaToLocals < ActiveRecord::Migration[5.2]
  def change
    add_reference :locals, :comuna, foreign_key: true
  end
end
