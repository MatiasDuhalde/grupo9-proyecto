class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :calificacion, null: false
      t.string :comentario

      t.timestamps
    end
  end
end
