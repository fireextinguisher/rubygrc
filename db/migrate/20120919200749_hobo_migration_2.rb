class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :controls, :owner_id, :integer

    add_index :controls, [:owner_id]
  end

  def self.down
    remove_column :controls, :owner_id

    remove_index :controls, :name => :index_controls_on_owner_id rescue ActiveRecord::StatementInvalid
  end
end
