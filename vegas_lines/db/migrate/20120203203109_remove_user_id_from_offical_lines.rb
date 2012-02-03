class RemoveUserIdFromOfficalLines < ActiveRecord::Migration
  def up
    remove_column :offical_lines, :user_id
  end

  def down
    add_column :offical_lines, :user_id, :integer
  end
end
