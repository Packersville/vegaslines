class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :user_id
      t.integer :week_id
      t.decimal :game1, :precision => 3, :scale => 1
      t.decimal :game2, :precision => 3, :scale => 1
      t.decimal :game3, :precision => 3, :scale => 1
      t.decimal :game4, :precision => 3, :scale => 1
      t.decimal :game5, :precision => 3, :scale => 1
      t.decimal :game6, :precision => 3, :scale => 1
      t.decimal :game7, :precision => 3, :scale => 1
      t.decimal :game8, :precision => 3, :scale => 1
      t.decimal :game9, :precision => 3, :scale => 1
      t.decimal :game10, :precision => 3, :scale => 1
      t.decimal :game11, :precision => 3, :scale => 1
      t.decimal :game12, :precision => 3, :scale => 1
      t.decimal :game13, :precision => 3, :scale => 1
      t.decimal :game14, :precision => 3, :scale => 1
      t.decimal :game15, :precision => 3, :scale => 1
      t.decimal :game16, :precision => 3, :scale => 1

      t.timestamps
    end
  end
end
