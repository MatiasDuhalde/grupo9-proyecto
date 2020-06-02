class AddDetailsToLocals < ActiveRecord::Migration[5.2]
  def change
    add_column :locals, :nombre, :string
    add_column :locals, :descripcion, :string
  end
end
