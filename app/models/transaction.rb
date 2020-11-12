class Transaction < ApplicationRecord
  has_and_belongs_to_many :user, foreign_key: 'author_id'
  has_many :groups, class_name: 'Group', foreign_key: 'group_id'
end
