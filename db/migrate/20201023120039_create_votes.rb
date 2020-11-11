class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :user, null: false
      t.references :article, null: false

      t.timestamps
    end
    add_foreign_key :votes, :articles, column: :article_id
    add_foreign_key :votes, :users, column: :user_id
  end
end
