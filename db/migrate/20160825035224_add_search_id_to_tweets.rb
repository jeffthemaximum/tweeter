class AddSearchIdToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :search_id, :integer
    add_index  :tweets, :search_id
  end
end
