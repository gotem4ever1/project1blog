class Article < ApplicationRecord

has_many :comments, dependent: :destroy  #comment the article and delete the comment
  validates :title, presence: true, #title for every articles
                    length: { minimum: 1 }

end
