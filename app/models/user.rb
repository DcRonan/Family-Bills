class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presence: true, length: { maximum: 30 }

  has_many :transactions, class_name: "Transaction", foreign_key: "transaction_id"
  has_many :groups, class_name: "Group", foreign_key: "group_id"
end
