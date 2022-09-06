class Expense < ApplicationRecord
  has_many :classifies
  has_many :groups, through: :classifies
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :name, presence: true
  validates :amount, presence: true
end
