class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.refferences :tenant
      t.string :node_name
    end
  end
end
