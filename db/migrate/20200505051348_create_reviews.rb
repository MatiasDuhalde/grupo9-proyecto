class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :calificacion
      t.string :comentario

      t.timestamps
    end
  end
end
