class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :actors
end
