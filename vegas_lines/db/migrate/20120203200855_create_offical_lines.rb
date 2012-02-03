class CreateOfficalLines < ActiveRecord::Migration
  def change
    create_table :offical_lines do |t|
      t.integer :user_id
      t.integer :week_id
      t.string :game1
      t.string :game2
      t.string :game3
      t.string :game4
      t.string :game5
      t.string :game6
      t.string :game7
      t.string :game8
      t.string :game9
      t.string :game10
      t.string :game11
      t.string :game12
      t.string :game13
      t.string :game14
      t.string :game15
      t.string :game16
      
      t.timestamps
    end
  end
end
