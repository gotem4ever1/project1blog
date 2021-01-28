class Article < ApplicationRecord
  belongs_to :user #association with the user
has_many :comments, dependent: :destroy  #comment the article and delete the comment
  validates :title, presence: true, #title for every articles
                    length: { minimum: 1 }

end
