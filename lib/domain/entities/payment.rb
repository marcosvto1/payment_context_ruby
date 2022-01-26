module Domain
  module Entities
    attr_reader :number, :paid_date, :expire_date, :total, :total_paid, :payer, :document, :address, :email

    class Payment
      def initialize(paid_date, expire_date, total, total_paid, payer, document, address, email)
        @number = rand(0000, 9999)
        @paid_date = paid_date
        @expire_date = expire_date
        @total = total
        @total_paid = total_paid
        @payer = payer
        @document = document
        @address = address
        @email = email
      end
    end
  end
end
