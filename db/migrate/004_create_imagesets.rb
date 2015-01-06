class CreateImagesets < ActiveRecord::Migration
  def self.up
    create_table :imagesets do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :imagesets
  end
end
