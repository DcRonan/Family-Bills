class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transactions
  has_many :groups

  def external_transactions(tran)
      tran.select { |t| t.group_id == id}
  end
end
