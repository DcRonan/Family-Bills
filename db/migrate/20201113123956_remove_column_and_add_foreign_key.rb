class RemoveColumnAndAddForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :transactions, :users, column: :author_id
    add_reference :transactions, :user, index: true
    remove_column :transactions, :author_id
  end
end
