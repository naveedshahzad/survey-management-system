class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :survey_response, foreign_key: true
      t.references :question, foreign_key: true
      t.references :respondent, foreign_key: true
      t.string :answer, limit: 100

      t.timestamps
    end
  end
end
