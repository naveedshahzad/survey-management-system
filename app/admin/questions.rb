ActiveAdmin.register Question do
  menu priority: 2
  permit_params :question_text
end
