class HoboMigration9 < ActiveRecord::Migration
  def self.up
    create_table :test_models do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :test_models
  end
end
