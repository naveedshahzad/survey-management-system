class SurveyResponse < ApplicationRecord
  belongs_to :survey
  belongs_to :respondent
  has_many :responses

  accepts_nested_attributes_for :responses

  validates :respondent, uniqueness: {scope: :survey, message: 'already assigned this survey.'}
end
