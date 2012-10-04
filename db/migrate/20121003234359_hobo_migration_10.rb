class HoboMigration10 < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :computers
  end
end
