class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.refferences :metric
      t.refferences :node
      t.string :value
      t.integer :verify
    end
  end
end
