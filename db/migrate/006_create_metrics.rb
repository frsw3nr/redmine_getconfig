class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.references :domain
      t.string :metric_name, null: false, limit: 24
      t.boolean :device_flag
    end

    add_index :metrics, [:domain_id, :metric_name], unique: true
  end
end
