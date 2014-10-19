class RenameSenderId < ActiveRecord::Migration
  def change
  	rename_column :messages, :sender_id, :user_id
  end
end
