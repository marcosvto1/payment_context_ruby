module Domain
  module Entities
    class CreditCardPayment < Payment
      attr_reader :card_holder_number, :card_number, :last_transaction_number

      def initialize(
        paid_date,
        expire_date,
        total,
        total_paid,
        payer,
        document,
        address,
        email,
        card_holder_name,
        card_number,
        last_transaction_number
      )
        super(
          paid_date,
          expire_date,
          total,
          total_paid,
          payer,
          document,
          address,
          email
        )
        @card_holder_name = card_holder_name
        @card_number = card_number
        @last_transaction_number = last_transaction_number
      end
    end
  end
end
