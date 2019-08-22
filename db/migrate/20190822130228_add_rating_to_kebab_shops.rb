class AddRatingToKebabShops < ActiveRecord::Migration[5.2]
  def change
        add_column :kebab_shops, :rating, :integer

  end
end
