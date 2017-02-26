class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :domain_name, null: false, limit: 24
    end

    add_index :domains, :domain_name, unique: true
  end
end
