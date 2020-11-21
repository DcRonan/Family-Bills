class AddDescriptionColumnToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :desc, :text
  end
end
