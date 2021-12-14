class AffirmationMessage < ApplicationRecord
  belongs_to :user
  belongs_to :mood
  validates :message, presence: true, length: { maximum: 140 }
  acts_as_votable

  def sensitive?
    (3...5) === self.get_dislikes.size
  end

  def offensive?
    self.get_dislikes.size >= 5
  end

  def destroy_message
    self.delete
  end
end
