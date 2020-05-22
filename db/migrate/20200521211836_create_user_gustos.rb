class CreateUserGustos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_gustos do |t|
      t.integer :user_id
      t.integer :gusto_id

      t.timestamps
    end
  end
end
