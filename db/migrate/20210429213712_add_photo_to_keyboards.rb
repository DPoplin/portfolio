class AddPhotoToKeyboards < ActiveRecord::Migration[6.1]
  def change
    add_column :keyboards, :photo, :binary
  end
end
