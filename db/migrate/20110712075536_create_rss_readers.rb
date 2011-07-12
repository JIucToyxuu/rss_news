class CreateRssReaders < ActiveRecord::Migration
  def self.up
    create_table :rss_readers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :rss_readers
  end
end
