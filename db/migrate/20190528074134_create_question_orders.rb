class CreateQuestionOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :question_orders do |t|
      t.references :question, foreign_key: true
      t.references :survey, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
