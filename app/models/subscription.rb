class Subscription < ApplicationRecord
  belongs_to :holder, polymorphic: true
  belongs_to :target, polymorphic: true
end
