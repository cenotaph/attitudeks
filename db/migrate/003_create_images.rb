class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.text :file
      t.datetime :created_at
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
