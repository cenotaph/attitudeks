class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.string :slug
      t.timestamps
    end
    add_index :pages, :slug, unique: true
    add_column :posts, :slug, :string
    add_index :posts, :slug, unique: true
  end

  def self.down
    drop_table :pages
  end
end
