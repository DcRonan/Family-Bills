class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :transactions
  validates :name, presence: true
  has_one_attached :avatar
end
