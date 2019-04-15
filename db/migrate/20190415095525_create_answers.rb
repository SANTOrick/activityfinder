class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :title
      t.integer :question_id, index: true, default: nil
      t.integer :user_id, index: true, default: nil
      t.boolean :reply, default: false

      t.timestamps
    end
  end
end
