class HoboMigration6 < ActiveRecord::Migration
  def self.up
    create_table :assertions do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :objectives, :assertion_id, :integer
    remove_column :objectives, :assertion

    add_index :objectives, [:assertion_id]
  end

  def self.down
    remove_column :objectives, :assertion_id
    add_column :objectives, :assertion, :string

    drop_table :assertions

    remove_index :objectives, :name => :index_objectives_on_assertion_id rescue ActiveRecord::StatementInvalid
  end
end
