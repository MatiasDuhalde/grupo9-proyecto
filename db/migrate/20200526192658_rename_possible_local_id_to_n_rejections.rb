class RenamePossibleLocalIdToNRejections < ActiveRecord::Migration[5.2]
  def change
    rename_column :matches, :possible_local_id, :n_rejections
  end
end
