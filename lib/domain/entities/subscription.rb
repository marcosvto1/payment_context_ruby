module Domain
  module Entities
    class Subscription
      attr_reader :create_date, :last_update_date, :expire_date, :active, :payments

      def initialize(expire_date = nil?)
        @create_date = Time.now
        @last_update_date = Time.now
        @active = true
        @payments = []
      end

      def add_payment(payments)
        @payments.push(payments)
      end

      def activate
        @active = true
      end

      def inactivate
        @active = false
      end
    end
  end
end
