class Respondent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :survey_responses
  has_many :surveys, through: :survey_responses
  has_many :responses
  def name
    email
  end
end
