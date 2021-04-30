class CreateCables < ActiveRecord::Migration[6.1]
  def change
    create_table :cables do |t|
      t.datetime :build_date
      t.string :paracord
      t.string :techflex
      t.string :heatshrink
      t.string :connector
      t.timestamps
    end
  end
end
