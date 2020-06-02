class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.boolean :accept
      t.integer :possible_local_id
      t.boolean :liked_bool_local
      t.boolean :liker_bool_local

      t.timestamps
    end
  end
end
