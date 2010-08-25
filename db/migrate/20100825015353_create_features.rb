class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :name, :null => false
      t.integer :language_id, :null => false
      t.text :snippet, :null => false, :default => ''
      t.text :info, :null => false, :default => ''
      t.string :url
      t.string :fv
      t.string :tv
      t.boolean :deprecated, :null => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
