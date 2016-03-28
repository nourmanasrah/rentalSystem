class AddExtraFieldToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :is_kitchen, :boolean
    add_column :rooms, :home_rules, :text
    add_column :rooms, :cancellation, :string
    add_column :rooms, :property_type, :string
  end
end
