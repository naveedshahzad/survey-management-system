ActiveAdmin.register SurveyResponse do
  menu priority: 3
  permit_params :survey_id, :respondent_id

  form do |f|
    inputs do
      f.input :survey
      f.input :respondent
    end
    actions
  end

end
