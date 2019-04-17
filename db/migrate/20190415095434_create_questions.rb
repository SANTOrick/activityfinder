class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :choice_1
      t.integer :choice_2
      t.string :button_1
      t.string :button_2
      t.timestamps
    end
  end
end
