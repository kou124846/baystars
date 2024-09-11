class AddUserIdToYokohamas < ActiveRecord::Migration[6.1]
  def change
    add_column :yokohamas, :user_id, :integer
  end
end
