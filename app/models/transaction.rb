class Transaction < ApplicationRecord
  belongs_to :user
  has_many :groups
  validates :name, :amount, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
