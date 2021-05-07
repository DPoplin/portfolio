class AddCableToBuildService < ActiveRecord::Migration[6.1]
  def change
    add_column :build_services, :custom_cable, :boolean
  end
end
