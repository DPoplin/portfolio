class RemoveKeycapsFromKeyboards < ActiveRecord::Migration[6.1]
  def change
    remove_column :keyboards, :keycaps, :string
  end
end
