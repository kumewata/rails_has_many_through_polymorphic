require 'rails_helper'

RSpec.describe ServiceBOrder, type: :model do
  describe '中間テーブル機能チェック' do
    it 'service_b_orderレコードに対して、ポリモーフィックなpaymentとbill_paymentレコードがきちんと紐づく' do
      user = User.new(name: 'Dan', email: 'test@example.com')
      user.save!
      service_b_order = ServiceBOrder.new(plan_type: 1, user: user)
      service_b_order.save!

      payment = Payment.new(payment_type: 1)
      # service_b_order.payments << payment
      service_b_order.subscriptions.create(target: payment)
      bill_recipient = BillRecipient.new(address: 'Chiyoda')
      # service_b_order.bill_recipients << bill_recipient
      service_b_order.subscriptions.create(target: bill_recipient)
      
      expect(service_b_order.payments.count).to eq 1
      expect(service_b_order.payments.first).to eq(payment)
      expect(service_b_order.bill_recipients.count).to eq 1
      expect(service_b_order.bill_recipients.first).to eq(bill_recipient)
    end
  end
end