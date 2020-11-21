class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :group_id, :integer
  end
end
