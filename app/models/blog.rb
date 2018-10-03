class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments,
  dependent: :destroy
  validates :title, :presence => true
  validates :body, :presence => true
  validates :body, length: {in: 1..240, message:"must be between 1-240 characters"}
  validates :image, :presence => true
end
