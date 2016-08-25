class RemoveSearchFromTweets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tweets, :search, :text
  end
end
