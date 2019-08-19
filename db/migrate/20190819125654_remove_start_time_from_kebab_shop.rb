class RemoveStartTimeFromKebabShop < ActiveRecord::Migration[5.2]
  def change
    remove_column :kebab_shops, :start_time, :time
  end
end
