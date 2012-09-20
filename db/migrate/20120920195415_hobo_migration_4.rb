class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :controls, :do_what, :string
  end

  def self.down
    remove_column :controls, :do_what
  end
end
