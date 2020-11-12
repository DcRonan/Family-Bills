class Group < ApplicationRecord
  has_and_belongs_to_many :user, foreign_key: 'user_id'
  has_many :transactions, class_name: 'Transaction', foreign_key: 'transaction_id'
end
