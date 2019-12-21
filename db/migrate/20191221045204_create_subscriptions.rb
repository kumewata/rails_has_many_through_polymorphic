class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.bigint :holder_id
      t.string :holder_type
      t.bigint :target_id
      t.string :target_type
    end
  end
end
