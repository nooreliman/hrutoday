class AffirmationMessage < ApplicationRecord
  belongs_to :user
  belongs_to :mood
  validates :message, presence: true, length: { maximum: 80 }
  acts_as_votable

  def sensitive?
    (2...3) === self.get_dislikes.size
  end

  def offensive?
    self.get_dislikes.size >= 3
  end

  def destroy_message
    self.delete
  end

end
