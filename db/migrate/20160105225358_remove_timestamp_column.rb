class RemoveTimestampColumn < ActiveRecord::Migration
  def change
  	remove_column :posts, :timestamp
  end
end
