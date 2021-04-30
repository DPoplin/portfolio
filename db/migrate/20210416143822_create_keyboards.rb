class CreateKeyboards < ActiveRecord::Migration[6.1]
  def change
    create_table :keyboards do |t|
      t.string :name
      t.datetime :build_date
      t.string :switches
      t.string :keycaps
      t.timestamps
    end
  end
end
