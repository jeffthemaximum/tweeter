class AddStoredQueryIdToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :stored_query_id, :integer
    add_index  :tweets, :stored_query_id
  end
end
