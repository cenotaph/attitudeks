
class AddSlugToImagesets < ActiveRecord::Migration
  def self.up
    change_table :imagesets do |t|
      t.string :slug
    end
    Imageset.find_each(&:save)
  end

  def self.down
    change_table :imagesets do |t|
      t.remove :slug
    end
  end
end
