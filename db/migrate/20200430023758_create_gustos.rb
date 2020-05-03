class CreateGustos < ActiveRecord::Migration[5.2]
  def change
    create_table :gustos do |t|
      t.string :gusto_nombre
      t.text :gusto_descripcion

      t.timestamps
    end
  end
end
