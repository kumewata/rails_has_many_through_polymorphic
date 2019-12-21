class CreateServiceBOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :service_b_orders do |t|
      t.belongs_to :user
      t.integer :plan_type
    end
  end
end
