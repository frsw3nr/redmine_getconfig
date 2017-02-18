class CreateDeviceResults < ActiveRecord::Migration
  def change
    create_table :device_results do |t|
      t.refferences :metric
      t.refferences :node
      t.integer :seq
      t.string :item_name
      t.string :value
    end
  end
end
