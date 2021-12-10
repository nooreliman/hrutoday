class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_voter
  acts_as_favoritor
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :affirmation_messages, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :user_moods
  has_many :moods, through: :user_moods, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  validates :age, presence: true


  def moods_for_day(day)
    week_moods = UserMood.where(created_at: (Time.now.midnight - 6.days)...(Time.now), user: :current_user)
    week_moods.filter do |mood|
      mood.created_at.wday == day
    end
  end
end
