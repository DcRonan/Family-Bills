class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  # has_many :transactions, class_name: 'Transaction', foreign_key: 'transaction_id'
  validates :name, presence :true
end
