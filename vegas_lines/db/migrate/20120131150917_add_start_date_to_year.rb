class AddStartDateToYear < ActiveRecord::Migration
  def change
    add_column :years, :start_date, :date
  end
end
