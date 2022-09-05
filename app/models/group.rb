class Group < ApplicationRecord
  has_many :expenses
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :name, presence: true
  validates :icon, presence: true
end
