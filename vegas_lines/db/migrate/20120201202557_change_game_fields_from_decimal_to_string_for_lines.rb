class ChangeGameFieldsFromDecimalToStringForLines < ActiveRecord::Migration
  def up
    change_table :lines do |t|
      t.change :game1, :string
      t.change :game2, :string
      t.change :game3, :string
      t.change :game4, :string
      t.change :game5, :string
      t.change :game6, :string
      t.change :game7, :string
      t.change :game8, :string
      t.change :game9, :string
      t.change :game10, :string
      t.change :game11, :string
      t.change :game12, :string
      t.change :game13, :string
      t.change :game14, :string
      t.change :game15, :string
      t.change :game16, :string
    end
  end

  def down
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
end
