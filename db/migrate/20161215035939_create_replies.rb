class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.references :tweet, foreign_key: true

      t.timestamps
    end
  end
end
