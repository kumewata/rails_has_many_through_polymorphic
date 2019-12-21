class CreateBillRecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_recipients do |t|
      t.string :address
    end
  end
end
