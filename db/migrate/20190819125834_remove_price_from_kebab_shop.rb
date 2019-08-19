class RemovePriceFromKebabShop < ActiveRecord::Migration[5.2]
  def change
    remove_column :kebab_shops, :price, :integer
  end
end
