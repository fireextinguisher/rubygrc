class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :business_processes, :owner_id, :integer

    add_column :process_steps, :owner_id, :integer

    add_index :business_processes, [:owner_id]

    add_index :process_steps, [:owner_id]
  end

  def self.down
    remove_column :business_processes, :owner_id

    remove_column :process_steps, :owner_id

    remove_index :business_processes, :name => :index_business_processes_on_owner_id rescue ActiveRecord::StatementInvalid

    remove_index :process_steps, :name => :index_process_steps_on_owner_id rescue ActiveRecord::StatementInvalid
  end
end
