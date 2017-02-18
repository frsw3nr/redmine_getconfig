class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.refferences :domain
      t.string :metric_name
    end
  end
end
