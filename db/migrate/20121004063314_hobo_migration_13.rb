class HoboMigration13 < ActiveRecord::Migration
  def self.up
    drop_table :test_steps
    drop_table :test_models
  end

  def self.down
    create_table "test_steps", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "test_models", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
