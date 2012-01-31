class AddStartDateToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :start_date, :date
  end
end
