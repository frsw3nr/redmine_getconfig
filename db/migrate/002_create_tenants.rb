class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :tenant_name
    end
  end
end
