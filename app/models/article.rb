class Article < ApplicationRecord
  has_many :comments
  # min length 5 provided by tutorial
  # max length 78 from RFC 2822 recommendation of no more than 78 characters
  # in the subject header
  validates :title, presence: true, length: {minimum: 5, maximum: 78}
end
