class Review < ActiveRecord::Base
  belongs_to :book

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 5.0 }
  validates :text, presence: true, length: { in: 20..250 }
  validates :book, presence: true
end
