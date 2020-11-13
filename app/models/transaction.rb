class Transaction < ApplicationRecord
  belongs_to :user
  validates :name, :amount, presence: :true

  scope :recent, -> { order(created_at: :desc) }
end
