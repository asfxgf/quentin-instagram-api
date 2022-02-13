class Candidate < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :character, presence: true
end
