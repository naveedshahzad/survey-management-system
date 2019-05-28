ActiveAdmin.register SurveyResponse, namespace: :respondent_portal do
  permit_params :survey_id, :respondent_id, :responses_attributes => [:answer, :question_id, :respondent_id,:survey_response_id, :id]
  controller do
    def scoped_collection
      end_of_association_chain.includes(:survey).where(['survey_responses.respondent_id = ?', current_respondent.id])
    end

    def edit
      resource.survey.questions.each do |question|
        resource.responses.where(question_id: question.id, respondent_id: current_respondent.id).first_or_initialize
      end
      super
    end
  end

  index do
    column :survey
    column :respondent
    actions :defaults => false do |sr|
      link_to 'Respond', edit_respondent_portal_survey_response_path(sr)
    end
  end

  form do |f|
    inputs do
      f.input :survey
      f.input :respondent
    end
    inputs 'Questions' do
      f.has_many :responses, new_record: false, allow_destroy: false do |r|
        r.input :question, input_html: { disabled: true }
        r.input :question_id, as: :hidden
        r.input :respondent_id, as: :hidden
        r.input :id, as: :hidden
        r.input :answer
      end
    end
    actions
  end
end
