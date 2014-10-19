class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages, force: true do |t|
      t.integer :sender_id
      t.string :content, null: false
      t.datetime :date

      t.timestamps
    end
  end
end
