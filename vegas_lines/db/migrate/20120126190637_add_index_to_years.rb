class AddIndexToYears < ActiveRecord::Migration
  def change
    add_index :years, :year
  end
end
