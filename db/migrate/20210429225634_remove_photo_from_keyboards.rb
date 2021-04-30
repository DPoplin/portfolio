class RemovePhotoFromKeyboards < ActiveRecord::Migration[6.1]
  def change
    remove_column :keyboards, :photo, :binary
  end
end
