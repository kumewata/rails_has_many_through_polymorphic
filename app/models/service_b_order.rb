class ServiceBOrder < ApplicationRecord
  belongs_to :user
  
  has_many :subscriptions, as: :holder
  has_many :payments, through: :subscriptions, source: :target, source_type: 'Payment'
  has_many :bill_recipients, through: :subscriptions, source: :target, source_type: 'BillRecipient'
end
