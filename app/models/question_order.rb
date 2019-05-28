class QuestionOrder < ApplicationRecord
  belongs_to :survey, inverse_of: :question_orders
  belongs_to :question, inverse_of: :question_orders
  validates :question, uniqueness: {scope: :survey, message: 'already added to this survey.'}
end
