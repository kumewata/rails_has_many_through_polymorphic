class BillRecipient < ApplicationRecord
  has_many :subscriptions, as: :target
  has_many :service_a_orders, through: :subscriptions, source: :holder, source_type: 'ServiceAOrder'
  has_many :service_a_contracts, through: :payment_bill_recipient_holders, source: :holder, source_type: 'ServiceAContract'
end
