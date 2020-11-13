class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transactions, class_name: "Transaction", foreign_key: "transaction_id"
  has_many :groups, class_name: "Group", foreign_key: "group_id"
end
