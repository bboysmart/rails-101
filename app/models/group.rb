class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  has_many :group_relatationships
  has_many :members, through: :group_relatationships, source: :user
end
