class AddDateAndTimeFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :date, :date
    add_column :games, :time, :string
  end
end
