class RemoveClosingTimeFromKebabShop < ActiveRecord::Migration[5.2]
  def change
    remove_column :kebab_shops, :closing_time, :time
  end
end
