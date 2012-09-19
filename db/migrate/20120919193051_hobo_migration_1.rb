class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :controls do |t|
      t.string   :name
      t.string   :who
      t.string   :as
      t.string   :what
      t.string   :how
      t.string   :exception
      t.string   :evidence
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :controls
  end
end
