class RemovePhotoFromCables < ActiveRecord::Migration[6.1]
  def change
    remove_column :cables, :photo, :binary
  end
end
