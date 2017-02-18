class CreateSiteNodes < ActiveRecord::Migration
  def change
    create_table :site_nodes do |t|
      t.refferences :site
      t.refferences :node
    end
  end
end
