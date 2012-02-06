class ChangeTableNameOfOfficialLine < ActiveRecord::Migration
  def change
    rename_table :offical_lines, :official_lines
  end
end
