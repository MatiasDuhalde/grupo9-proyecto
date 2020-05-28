class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :edad, :integer
    add_column :users, :telefono, :string
    add_column :users, :nombre, :string
    add_column :users, :descripcion, :text
  end
end
