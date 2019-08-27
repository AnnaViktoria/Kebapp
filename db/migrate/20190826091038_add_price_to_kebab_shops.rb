class AddPriceToKebabShops < ActiveRecord::Migration[5.2]
  def change
    add_column :kebab_shops, :price, :float
  end
end
