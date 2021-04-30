class AddImageToCables < ActiveRecord::Migration[6.1]
  def change
    add_column :cables, :photo, :binary
  end
end
