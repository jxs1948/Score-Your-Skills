class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate  :picture_size
  validates  :correctness, presence: true, numericality: { only_integer: true } 
 # validates_inclusion_of :correctness, :in => 0..6
  validates  :creativity, presence: true, numericality: { only_integer: true }
  validates  :relevance, presence: true, numericality: { only_integer: true }
  validates  :sustainability, presence: true, numericality: { only_integer: true }
  validates  :user_experience, presence: true, numericality: { only_integer: true }
  
  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
  
