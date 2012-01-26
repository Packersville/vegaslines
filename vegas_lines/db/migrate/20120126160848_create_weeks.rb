class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :year_id
      t.integer :week

      t.timestamps
    end
  end
end
