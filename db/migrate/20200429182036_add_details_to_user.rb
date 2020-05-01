class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :comuna_id, :integer
    add_column :users, :ur_edad, :integer
    add_column :users, :ur_telefono, :integer
    add_column :users, :gusto_id, :integer
    add_column :users, :ur_nombre, :string
    add_column :users, :ur_descripcion, :text
  end
end
