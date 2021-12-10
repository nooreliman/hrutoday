class AffirmationMessage < ApplicationRecord
  belongs_to :user
  belongs_to :mood
  acts_as_votable
end
