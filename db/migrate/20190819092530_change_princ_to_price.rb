class ChangePrincToPrice < ActiveRecord::Migration[5.2]
  def change
    rename_column :kebab_shops, :princ, :price
  end
end
