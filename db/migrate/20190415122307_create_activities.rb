class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
