class Order < ActiveRecord::Base
  PAYMENT_TYPES = [
    [ "Check", "check" ],
    [ "Credit card", "cc" ],
    [ "Purchase order", "po" ]
  ]

  has_many :line_items
end
