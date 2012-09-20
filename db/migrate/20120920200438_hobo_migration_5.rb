class HoboMigration5 < ActiveRecord::Migration
  def self.up
    remove_column :controls, :what

    add_column :objectives, :owner_id, :integer

    add_index :objectives, [:owner_id]
  end

  def self.down
    add_column :controls, :what, :string

    remove_column :objectives, :owner_id

    remove_index :objectives, :name => :index_objectives_on_owner_id rescue ActiveRecord::StatementInvalid
  end
end
