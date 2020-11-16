class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :name, :amount, presence: :true

  scope :recent, -> { order(created_at: :desc) }
end
