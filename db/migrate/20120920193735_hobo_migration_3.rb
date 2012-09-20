class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :objectives do |t|
      t.string   :what
      t.string   :is
      t.string   :assertion
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :objectives
  end
end
