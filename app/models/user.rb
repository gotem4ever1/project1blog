class User < ActiveRecord::Base
  has_many :articles #association with the articles
  #user validation
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  #email vqalidation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
  before_save { self.email = email.downcase } #email is in lowcases
end
