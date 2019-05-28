class Question < ApplicationRecord
  has_many :question_orders
  has_many :surveys, through: :question_orders
  has_many :responses
  validates :question_text, uniqueness: { message: 'already defined.' }
  validates :question_text, presence: true

  def name
    question_text
  end
end
