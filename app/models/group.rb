class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :group_transaction
  validates :name, presence: :true
end
