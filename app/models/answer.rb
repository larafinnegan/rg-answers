class Answer < ActiveRecord::Base
  belongs_to :question

  validates :description, presence: true

  scope :by_votes, -> { order ("votes DESC") }
end