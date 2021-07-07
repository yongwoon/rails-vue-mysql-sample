class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps

      t.index [:user_id, :created_at]
    end
  end
end
