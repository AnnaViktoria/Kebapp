class StartTimeToKebabShop < ActiveRecord::Migration[5.2]
  def change
    add_column :kebab_shops, :start_time, :time
  end
end
