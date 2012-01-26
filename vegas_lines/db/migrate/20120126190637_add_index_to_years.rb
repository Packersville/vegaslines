class AddIndexToYears < ActiveRecord::Migration
  def change
    add_index :years, :year, :unique => true
  end
end
