class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :business_processes do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :process_steps do |t|
      t.string   :name
      t.string   :supplier
      t.string   :input
      t.string   :description
      t.string   :output
      t.string   :customer
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :business_process_id
    end
    add_index :process_steps, [:business_process_id]
  end

  def self.down
    drop_table :business_processes
    drop_table :process_steps
  end
end
