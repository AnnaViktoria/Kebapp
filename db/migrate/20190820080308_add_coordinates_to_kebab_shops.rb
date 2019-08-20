class AddCoordinatesToKebabShops < ActiveRecord::Migration[5.2]
  def change
    add_column :kebab_shops, :latitude, :float
    add_column :kebab_shops, :longitude, :float
  end
end
