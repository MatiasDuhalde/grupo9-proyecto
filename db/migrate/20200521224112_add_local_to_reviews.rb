class AddLocalToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :local, foreign_key: true
  end
end
