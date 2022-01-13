class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :open_am
      t.time :close_am
      t.time :open_pm
      t.time :close_pm
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
