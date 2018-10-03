class User < ApplicationRecord
  has_many :blogs
  has_many :comments,
  dependent: :destroy
  validates :first_name, :presence => true
  validates :first_name, format: {with: /\A[a-zA-Z]+\z/, message:"must contain characters between a and z only"}
  validates :last_name, :presence => true
  validates :last_name, format: {with: /\A[a-zA-Z]+\z/, message:"must contain characters between a and z only"}
  def full_name
    "#{first_name} #{last_name}"
  end
end
