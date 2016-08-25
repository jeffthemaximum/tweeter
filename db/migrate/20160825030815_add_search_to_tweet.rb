class AddSearchToTweet < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :search, :text
  end
end
