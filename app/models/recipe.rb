class Recipe < ApplicationRecord
   belongs_to :user
   mount_uploader :image, ImageUploader
   has_many :materials,dependent: :destroy
  accepts_nested_attributes_for :materials, allow_destroy: true
  # accepts_nested_attributes_for :materials, reject_if: :all_blank, allow_destroy: true

  # reject_if: :all_blank が邪魔していました。


  validates :title, presence: true
  validates :image, presence: true
  # validates :user, presence: true
end
