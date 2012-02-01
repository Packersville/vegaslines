class ChangeGameFieldsToDecimalForLines < ActiveRecord::Migration
  def up
    change_table :lines do |t|
      t.change :game1, :decimal, :precision => 3, :scale => 1
      t.change :game2, :decimal, :precision => 3, :scale => 1
      t.change :game3, :decimal, :precision => 3, :scale => 1
      t.change :game4, :decimal, :precision => 3, :scale => 1
      t.change :game5, :decimal, :precision => 3, :scale => 1
      t.change :game6, :decimal, :precision => 3, :scale => 1
      t.change :game7, :decimal, :precision => 3, :scale => 1
      t.change :game8, :decimal, :precision => 3, :scale => 1
      t.change :game9, :decimal, :precision => 3, :scale => 1
      t.change :game10, :decimal, :precision => 3, :scale => 1
      t.change :game11, :decimal, :precision => 3, :scale => 1
      t.change :game12, :decimal, :precision => 3, :scale => 1
      t.change :game13, :decimal, :precision => 3, :scale => 1
      t.change :game14, :decimal, :precision => 3, :scale => 1
      t.change :game15, :decimal, :precision => 3, :scale => 1
      t.change :game16, :decimal, :precision => 3, :scale => 1
    end
  end
  
  def down
    change_table :lines do |t|
      t.change :game1, :integer
      t.change :game2, :integer
      t.change :game3, :integer
      t.change :game4, :integer
      t.change :game5, :integer
      t.change :game6, :integer
      t.change :game7, :integer
      t.change :game8, :integer
      t.change :game9, :integer
      t.change :game10, :integer
      t.change :game11, :integer
      t.change :game12, :integer
      t.change :game13, :integer
      t.change :game14, :integer
      t.change :game15, :integer
      t.change :game16, :integer
    end
  end
end
