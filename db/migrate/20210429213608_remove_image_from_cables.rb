class RemoveImageFromCables < ActiveRecord::Migration[6.1]
  def change
    remove_column :cables, :image, :file
  end
end
