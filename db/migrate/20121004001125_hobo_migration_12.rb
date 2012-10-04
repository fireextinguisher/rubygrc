class HoboMigration12 < ActiveRecord::Migration
  def self.up
    drop_table :computers

    create_table :test_steps do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    create_table "computers", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "name"
    end

    drop_table :test_steps
  end
end
