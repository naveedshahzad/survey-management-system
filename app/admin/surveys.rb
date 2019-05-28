ActiveAdmin.register Survey do
  menu priority: 1

  permit_params :name, :description, :question_orders_attributes => [:question_id, :order, :id, :_destroy]

  form do |f|
    inputs do
      f.input :name
      f.input :description
    end
    inputs 'Questions' do
      f.has_many :question_orders do |q|
        q.input :question
        q.input :order
      end
    end
    actions
  end
end
