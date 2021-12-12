class AffirmationMessage < ApplicationRecord
  belongs_to :user
  belongs_to :mood
  validates :message, presence: true, length: { maximum: 140 }
  acts_as_votable
end
