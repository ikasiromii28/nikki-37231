class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :title
    validates :text
    validates :image
  end

  validates :mood_id, numericality: { other_than: 1, message: 'を選択してください' }
  validates :weather_id, numericality: { other_than: 1, message: 'を選択してください' }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mood
  belongs_to :weather
end
