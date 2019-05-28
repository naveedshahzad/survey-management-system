class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text, limit: 200

      t.timestamps
    end
  end
end
