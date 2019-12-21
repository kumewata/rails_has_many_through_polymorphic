class User < ApplicationRecord
  has_many :service_a_order
  has_many :service_a_contracts
  has_many :service_b_order
  has_many :service_b_contracts
end
