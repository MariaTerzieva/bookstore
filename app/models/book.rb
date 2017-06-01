class Book < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_attached_file :cover, styles: { thumb: "90x160>" },
                    url: "/assets/books/:id/:style/:basename.:extension",
                    path: ":rails_root/public/assets/books/:id/:style/:basename.:extension"

  validates :title, presence: true, length: { in: 2..100 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :isbn, presence: true, uniqueness: true  
  validates_attachment :cover, presence: true, content_type: { content_type: /\Aimage\/.*\z/ }

  def average_rating
    if self.reviews.size > 0
      self.reviews.average(:rating)
    else
      'Not rated yet'
    end
  end
end
