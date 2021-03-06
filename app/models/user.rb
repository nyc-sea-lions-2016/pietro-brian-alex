class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :answers
  has_many :votes, as: :votable
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true
  validates :password_digest, presence: true
end
