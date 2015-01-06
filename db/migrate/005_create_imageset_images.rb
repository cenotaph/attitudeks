class CreateImagesetImages < ActiveRecord::Migration
  def self.up
    create_table :imageset_images, id: false do |t|
      t.integer :imageset_id, null: false
      t.integer :image_id, null: false
      t.boolean :primary, default: false, null: false
      t.timestamps
    end
    add_index :imageset_images, [:imageset_id, :image_id], :unique => true, :name => "imageset_images_udx"
    add_index :imageset_images, [:imageset_id], name: "imageset_image_id_idx"
  end

  def self.down
    drop_table :imageset_images
  end
end
