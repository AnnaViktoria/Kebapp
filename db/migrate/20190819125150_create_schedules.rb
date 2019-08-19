class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :weekday
      t.integer :opening_hour
      t.integer :closing_hour
      t.references :kebab_shop, foreign_key: true

      t.timestamps
    end
  end
end
