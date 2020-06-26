class AddPlaceIdToLocals < ActiveRecord::Migration[5.2]
  def change
    add_column :locals, :place_id, :string
  end
end
