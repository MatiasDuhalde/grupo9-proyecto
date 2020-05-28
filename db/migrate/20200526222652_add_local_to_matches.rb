class AddLocalToMatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :local, foreign_key: true
  end
end
