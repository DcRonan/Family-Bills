class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :group_id, :integer
  end
end
