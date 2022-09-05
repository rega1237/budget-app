class Expense < ApplicationRecord
  belongs_to :group
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :name, presence: true
  validates :amount, presence: true
  validates :group, presence: true
end
