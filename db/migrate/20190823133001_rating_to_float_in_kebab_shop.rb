class RatingToFloatInKebabShop < ActiveRecord::Migration[5.2]
  def change
    change_column :kebab_shops, :rating, :float
  end
end
