ActiveAdmin.register QuestionOrder do
 menu false
 permit_params :question_id, :survey_id, :order
end
