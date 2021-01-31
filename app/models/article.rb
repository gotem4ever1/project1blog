class Article < ApplicationRecord

has_many :comments, dependent: :destroy
  #validates :title, presence: true, #error msgs
                    length: { minimum: 1 }

end
