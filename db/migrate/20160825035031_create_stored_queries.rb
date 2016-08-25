class CreateStoredQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :stored_queries do |t|
      t.text :search

      t.timestamps
    end
  end
end
