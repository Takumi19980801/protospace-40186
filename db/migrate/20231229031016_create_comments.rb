class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :user_id,      null: false
      t.integer :prototype_id, null: false
      t.text :content,         null: false
      t.references :prototype, null: false, foreign_key: { to_table: :prototypes }
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end