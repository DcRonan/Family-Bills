class Transaction < ApplicationRecord
  belongs_to :user
  has_many :groups
  validates :name, :amount, presence: true
  validates :desc, presence: true, length: { maximum: 100 }

  scope :recent, -> { order(created_at: :desc) }
end
