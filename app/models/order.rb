class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  # def self.by_amount(num)
    # where("amount = #{num}")
  #   where('amount = ?', num)
  # end
end
