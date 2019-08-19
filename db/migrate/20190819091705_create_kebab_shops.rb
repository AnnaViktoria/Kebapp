class CreateKebabShops < ActiveRecord::Migration[5.2]
  def change
    create_table :kebab_shops do |t|
      t.string :name
      t.integer :princ
      t.time :closing_time
      t.string :address

      t.timestamps
    end
  end
end
