class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :groups, class_name: 'Group', foreign_key: 'group_id'
end
