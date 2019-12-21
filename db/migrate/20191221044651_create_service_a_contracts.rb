class CreateServiceAContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :service_a_contracts do |t|
      t.belongs_to :user
      t.integer :plan_type
    end
  end
end
