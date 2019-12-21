require 'rails_helper'

RSpec.describe ServiceAOrder, type: :model do
  describe '中間テーブル機能チェック' do
    it 'service_b_orderレコードに対して、ポリモーフィックなpaymentとbill_paymentレコードがきちんと紐づく' do
      user = User.new(name: 'Dan', email: 'test@example.com')
      user.save!
      service_a_order = ServiceAOrder.new(plan_type: 1, user: user)
      service_a_order.save!

      payment = Payment.new(payment_type: 1)
      # service_a_order.payments << payment
      service_a_order.subscriptions.create(target: payment)
      bill_recipient = BillRecipient.new(address: 'Chiyoda')
      # service_a_order.bill_recipients << bill_recipient
      service_a_order.subscriptions.create(target: bill_recipient)
      
      expect(service_a_order.payments.count).to eq 1
      expect(service_a_order.payments.first).to eq(payment)
      expect(service_a_order.bill_recipients.count).to eq 1
      expect(service_a_order.bill_recipients.first).to eq(bill_recipient)
    end
  end
end