class AddPhotoToKebabShops < ActiveRecord::Migration[5.2]
  def change
    add_column :kebab_shops, :photo, :string
  end
end
