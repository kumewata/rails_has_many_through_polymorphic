class CreateServiceBContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :service_b_contracts do |t|
      t.belongs_to :user
      t.integer :plan_type
    end
  end
end
