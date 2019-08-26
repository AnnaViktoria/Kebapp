class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.references :kebab_shop, foreign_key: true

      t.timestamps
    end
  end
end
