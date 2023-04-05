class AddUserIdToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movie, :user_id, :integer 
  end
end
