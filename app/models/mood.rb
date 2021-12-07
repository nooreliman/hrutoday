class Mood < ApplicationRecord
  has_many :user_moods
  has_many :affirmation_messages
  has_many :forums
end
