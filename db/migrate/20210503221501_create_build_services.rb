class CreateBuildServices < ActiveRecord::Migration[6.1]
  def change
    create_table :build_services do |t|
      t.string :name
      t.string :email
      t.string :keyboard
      t.string :switches
      t.boolean :lube_service
      t.datetime :build_timeline
      t.text :address
      t.string :paypal

      t.timestamps
    end
  end
end
