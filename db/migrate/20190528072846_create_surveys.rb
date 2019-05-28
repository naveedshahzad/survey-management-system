class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :name, limit: 50
      t.string :description, limit: 1000

      t.timestamps
    end
    add_index :surveys, :name, unique: true
  end
end
