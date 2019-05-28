class Survey < ApplicationRecord
  has_many :question_orders
  has_many :questions, through: :question_orders
  has_many :survey_responses
  has_many :respondents, through: :survey_responses

  validates :name, uniqueness: {message: 'already defined'}
  validates :name, presence: true
  validates :description, presence: true

  accepts_nested_attributes_for :question_orders
end
